using System.Xml.Linq;
using System.Text.RegularExpressions;

XNamespace itunes = "http://www.itunes.com/dtds/podcast-1.0.dtd";

var soundCloudIds = (
    from item in XDocument.Load("http://feeds.soundcloud.com/users/soundcloud:users:4273388/sounds.rss").Descendants("item")
    let guid = item.Element("guid").Value
    select Tuple.Create(guid.Substring(guid.LastIndexOf('/') + 1), item))
        .ToLookup(x => x.Item1, x => x.Item2.Element(itunes + "duration").Value);
var utf8WithoutBom = new System.Text.UTF8Encoding(false);

foreach(var hit in
    from path in Directory.EnumerateFiles(Path.Combine(Directory.GetCurrentDirectory(), "_posts")).AsParallel()
    where Regex.Match(path, @"podcast", RegexOptions.IgnoreCase).Success
    let text = File.ReadAllText(path)
    let podcast = Regex.Match(text, @"podcast:.*", RegexOptions.IgnoreCase)
    where podcast.Success
    let trackId = Regex.Match(podcast.Value, @"stream(/|%2f)(\d+)", RegexOptions.IgnoreCase)
    where trackId.Success
    let duration = soundCloudIds[trackId.Groups[2].Value].FirstOrDefault()
    where duration != null
    select new { path, duration, text })
{
    const string fm = "---";
    var frontMatterStart = hit.text.IndexOf(fm);
    var frontMatterEnd = hit.text.IndexOf(fm, frontMatterStart + fm.Length);
    var frontMatter = hit.text.Substring(fm.Length, frontMatterEnd - fm.Length);
    if (Regex.Match(frontMatter, @"duration: ", RegexOptions.IgnoreCase).Success) continue;

    frontMatter += "duration: \"" + hit.duration + "\"" + (frontMatter.StartsWith("\r\n") ? "\r\n" : "\n");
    File.WriteAllText(hit.path, fm + frontMatter + hit.text.Substring(frontMatterEnd), utf8WithoutBom);
}

