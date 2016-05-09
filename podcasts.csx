using System.Xml.Linq;
using System.Text.RegularExpressions;


var soundCloudIds = (
    from item in XDocument.Load("http://feeds.soundcloud.com/users/soundcloud:users:4273388/sounds.rss").Descendants("item")
    let guid = item.Element("guid").Value
    select Tuple.Create(guid.Substring(guid.LastIndexOf('/') + 1), item))
        .ToLookup(x => x.Item1, x => x.Item2.Element("enclosure").Attribute("url").Value);
var utf8WithoutBom = new System.Text.UTF8Encoding(false);

const string fm = "---";
foreach(var hit in
    from path in Directory.EnumerateFiles(Path.Combine(Directory.GetCurrentDirectory(), "_posts")).AsParallel()
    where Regex.Match(path, @"podcast", RegexOptions.IgnoreCase).Success
    let text = File.ReadAllText(path)
    let player = Regex.Match(text, @"<(iframe|object).*(/>|</iframe>)", RegexOptions.IgnoreCase | RegexOptions.Multiline)
    where player.Success
    let trackId = Regex.Match(player.Value, @"tracks(/|%2f)(\d+)", RegexOptions.IgnoreCase)
    where trackId.Success
    let url = soundCloudIds[trackId.Groups[2].Value].FirstOrDefault()
    where url != null
    select new { path, url, text })
{
    var frontMatterStart = hit.text.IndexOf(fm);
    var frontMatterEnd = hit.text.IndexOf(fm, frontMatterStart + fm.Length);
    var frontMatter = hit.text.Substring(fm.Length, frontMatterEnd - fm.Length);
    if (Regex.Match(frontMatter, @"podcast: http", RegexOptions.IgnoreCase).Success) continue;

    frontMatter += "podcast: " + hit.url + (frontMatter.StartsWith("\r\n") ? "\r\n" : "\n");
    File.WriteAllText(hit.path, fm + frontMatter + hit.text.Substring(frontMatterEnd), utf8WithoutBom);
}