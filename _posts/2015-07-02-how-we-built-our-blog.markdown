---
layout: post
author: jonhmchan
title: How We Built Our Blog
hero: https://i.stack.imgur.com/FYbC3.jpg
description: "There was a lot that went into building our new blog - including the new engineering channel. See why it took us six to eight weeks to move to a new system, migrate our old content, and redesign the site."
tags:
- engineering
- development
- sysadmin
- design
- evangelism
---

Yesterday, we [announced](http://blog.stackexchange.com/2015/07/the-new-stack-exchange-blog/) the redesign of our blog and the addition of our engineering channel. This is the first post related to engineering detailing a walkthrough of what we've built, and what better than to blog about rebuilding our blog on our new blog? How meta.

## It started with an engineering blog
A few months ago, I took up a de facto role heading up developer evangelism efforts at Stack Exchange. I say that with a caveat: we treat developer evangelism at Stack very differently than most other companies do. What we *don't* want to do is create a team of people that travel around, speaking at events, trying to sell something and code occasionally - that didn't make sense to us. Instead, what we really want to do is highlight the amazing public outreach work members of our engineering team are already doing. Most if not all of our developers are active members of not only Stack Overflow, but the larger technical community: writing blog posts, doing open source work, and speaking at conferences. We really want to shed some light on the individual public outreach efforts our engineering team is actively doing. Second, we want to make the philosophy that has made Stack Overflow so successful for the developer community more widely known. Who better to do that than the developers that helped shape that community?

So the first natural solution to address these goals would be to blog about the work we're doing. We were inspired by a lot of great technical blogs out there like [Code as Craft](https://codeascraft.com/) and [OkTrends](http://oktrends.okcupid.com/) and the idea of an engineering blog that was similar to these examples had been thrown around. However, there were reservations about creating a completely separate blog: why fragment our readership even further? We had the official Stack Exchange company blog, the ServerFault blog for our SRE team, and the many personal blogs that our individual developers had. There were so many different avenues to publish our work, and we couldn't figure out where this content would live. It seemed like if we created new kinds of content in a completely separate blog, the existing ecosystem would force us to fragment our audience even further. Otherwise we would host content that was simply inappropriate in one of the existing blogs. What we *really* needed was a single destination that could accommodate many different kinds of content instead of creating multiple destinations that specialized in just one kind.

## Revisiting the Stack Exchange blog
After sending out the original proposal to the company, I quickly realized I might have stepped on a landmine of a project. The blog ecosystem was something that we've wanted to address for a very long time, and that meant that pretty much every part of the company would be affected by it and had strong opinions about the project. After considering all the comments I received, we came to a general conclusion: the ideal solution would be to take our most popular blog, the official Stack Exchange blog, and use it to house the new content we wanted - including the engineering posts. That turned out to be a much larger project that took [six to eight weeks](http://meta.stackexchange.com/questions/19478/the-many-memes-of-meta/19514#19514). There were some key parts to this solution that would make it work:

### Channels
![](https://i.stack.imgur.com/jfB91.png)

In the previous blog, we had all of our posts in a single column organized by tag. That meant *everything* we posted would go out to *anyone* reading our blog. The concern here was that if we just started writing very technical posts and put them in this channel, it would be relevant to a technical subset of our audience, but not to everyone. On the flip side, developers that would come to our blog to read technical content wouldn't necessarily want to read or care about everything else we're doing - they're here for the engineering stuff.

What we came up with were "channels" - high level categories that would let us separate the major kinds of posts we'd be publishing. There are two main ones: company news and engineering. The company news channel would house all of the familiar content like podcasts, company announcements, and so forth. It would also let us add new kinds of content like those for internal culture and diversity related efforts. The engineering channel effectively became our solution for an engineering blog, and would host all of our technical walkthroughs, write-ups of evangelism efforts, and technical opinion pieces like we originally wanted.

### Reposts
![](https://i.stack.imgur.com/B8QdQ.png)

Another key part of this solution was the ability to repost. Many of the most popular posts related to Stack Exchange - especially the technical posts - were decentralized, housed in our many developers' personal blogs. There was a good reason for this: we believe that our developers should publicly get credit for the things they build internally, and one of the best ways to claim it is to write about it on their personal blogs. Once we created an engineering channel, we didn't want to make our developers feel like they had to choose between posting on the company blog or on their personal blog. It seemed like the wrong move.

Instead, we came up with a different approach: post on your personal blog about your work just like you always have, and if you want to repost on the company blog for more exposure, we will do so with a prominent link to the original source. It does two things: it gives our technical audience the ability to get an inside look into how we build things while still giving credit to the people that build them.


## A new blogging engine
During the original proposal stage for the engineering blog, we also had a conversation about what engine we would use. At the time, all of our blogs were running WordPress...which we weren't so happy about. It was very buggy, difficult to log in to, not very performant, and has caused our SRE team more than a few headaches. If we were really going to revamp the new company blog, it seemed like a lot of work to try and wrestle with our WordPress installation.

![](https://i.stack.imgur.com/I2BnX.png)

### In comes Jekyll

![](https://i.stack.imgur.com/2NfU8.png)

Because we weren't happy with WordPress, we started looking at other engines. We looked at static site generation in Go and even considered building our own engine, but what we decided to do was switch to [Jekyll](http://jekyllrb.com/). It's an open source static site generator built in Ruby that was great for building blogs on. A lot of developers I know were switching over to Jekyll for their personal sites and it was something we had played around with on some design projects. Switching to Jekyll had a number of advantages:

 - Posts are in Markdown, something most of our company was familiar with
 - Jekyll is just static site generation, so it's much more performant
 - Complete flexibility for front end work, no need to wrestle with templates
 - Open source with a strong community, which we love
 - Not WordPress or PHP

Jekyll seemed to fit the bill for what we wanted, and I started building a prototype. One of the other nice things about Jekyll is that it was supported by [GitHub Pages](https://pages.github.com/), so I could actually share my work to the rest of the company without creating new builds. That leads me to my next point...

### Open Source

![](https://i.stack.imgur.com/ggOC0.png)

We have a policy of being "default public" at Stack Exchange. That means we try and work in the open when we can, and that includes our technical work. Because the blog prototype I was building was [already on GitHub](https://github.com/StackExchange/blog), it made sense to just keep it publicly available. It was different from the work I was used to - having code available to those outside of our internal team changed the way I approached building the blog:

 - Our blog was going to be used by people who are not very technical. Having a GUI for our community and marketing teams to create posts and preview Markdown without learning Git was great.
 - It meant we left the door open to let people outside of company make changes, fix bugs, and possibly even contribute posts in the future.
 - There are few examples of major migration efforts to Jekyll out there, and could be one of them.
 - People could take the work we did and use it for themselves. There are insights in the migration that we want to give back to the community.
 - If there are bugs *you* can [fix them](https://github.com/StackExchange/blog) too!

## Building the blog
Alright - enough about the ideation process. Now to the meaty technical parts. There was a *lot* of development work that went into this, so I'm only going to highlight some of the major pieces and insights we had building the blog:

### Infrastructure
Starting up a Jekyll project is pretty straightforward. It's ridiculously easy to install and with just a few naming conventions in the file structure, Jekyll takes care of the static site generation. Easy as it is, I decided to fork an existing bootstrapping repository called [Jekyll Now](https://github.com/barryclark/jekyll-now) made by a friend of mine (and VP of Engineering at Trello), [Barry Clark](https://twitter.com/barryclarkny).

Out of the box, most of what we needed was there: a posting engine with Markdown and code highlight support, JavaScript and CSS flexibility, and it was *fast*. Because all the hard work was being done up front, we were just serving static files and that was a huge performance boost over WordPress. In just a few minutes, I had a basic working blog that was being hosted on GitHub Pages. We were already well on our way to what we had originally set out to do.

### Importing the old content
Moving all of our previous blog posts to the new solution was a hard requirement, and that meant taking all the content we had on our WordPress instance and converting that into files in Markdown. This was not easy: we had over 700 blog posts over the history of the company, each with comments, static assets, and deeplinking that had to be preserved. The process seemed pretty straightforward if not riddled with edge cases that needed to be resolved: WordPress has an export function that spits out a giant XML file (a whopping 30MB of text and we just had to use that file to convert and pull files.

Thankfully, there are a few libraries that makes this migration easier. [I tried](https://github.com/StackExchange/blog/commit/7aa2cfa3959f3a7830bb972013ef3c9bea0e79eb) a few of the import methods that were recommended in the Jekyll documentation, but none of them seemed to do it cleanly. After a few more attempts, I finally stumbled upon [exitwp](https://github.com/thomasf/exitwp) and that seemed to work pretty well. You can see the [commit here](https://github.com/StackExchange/blog/commit/e43a0ad1b9e4474c58229912eeb2db7106f9997a) - it was over 5,000 different file changes with the initial import.

For the most part, this worked pretty well. I was surprised by how much was preserved and the fact that Jekyll supports arbitrary HTML in the Markdown files helped a lot. There were a few things that were lost in the process though: some images with captions were misformatted, embeds were lost for many of our podcasts, and the references to uploaded files in WordPress broke images across the board.

This is when I had to really intervene programmatically. I started writing Python scripts to go through every post and repair a lot of the work done here. Here's the high level overview:

 - For HTML errors, much of this repair work was manual. We looked at the top 50 high trafficked posts and the 100 most recent posts and manually went through to make sure everything was formatted well. This was done with a lot of help from our marketing team.
 - I wrote a Python script to go through all the imported posts, looked for references to WordPress hosted content, download all the static assets into `images/wordpress` in the repo, and changed all the links to relative paths on Jekyll. Worked surprisingly well.
 - We used Soundcloud embeds for all of our podcasts, and the vast majority of this was broken. I wrote a Python script that used a regular expression to find the relevant URL for the embed and reinserted the code necessary to restore the player. You can see the code for this below. It's very similar to the code I wrote for the image import as well.

{% highlight Python %}
import os, re, requests
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)

    	f = open(filename, "r")
    	contents = f.readlines()
    	f.close()

    	# Get WordPress 
    	slug = filename.replace("_posts/", "").replace(".markdown", "")

    	splits = slug.split("-")
    	year = splits[0]
    	month = splits[1]
    	end = "-".join(splits[3:])

    	link = "/".join([year, month, end])
    	link = "/" + link
    	wordpress_url = "http://blog.stackoverflow.com" + link

    	if re.search('podcast', wordpress_url):
    		print wordpress_url
	    	response = requests.get(wordpress_url)
	    	if response:
	    		for line in response.content.split("\n"):
	    			if re.search('<iframe|<object', line) and re.search("soundcloud", line):
	    				contents.append('\n'+line)
	    				f = open(filename, "w")
	    				f.write("".join(contents))
	    				f.close()

    	continue

    	contents.append(iframe)
    	f = open(filename, "w")
    	f.write("".join(contents))
    	f.close()
{% endhighlight %}

### Feeds and links

Another hard requirement was making sure that we didn't break deep linking. The posts on our blog are referenced a *lot* across the Stack Exchange network as well on the Internet generally. To break our URL scheme for posts would have been absolutely disastrous. In addition to that, we needed to preserve the XML feed on our blog. There are integrations for the community bulletin, it's a dependency for parts of the Stack Exchange sites themselves, and there are thousands of people that rely on the feed to get news from us. Preserving the links to our content and at least our main feed was extremely important.

Again, Jekyll thankfully had a feature to customize post URL structures. This was simply a setting in our `_config.yml` file, and it took a single line of code:

{% highlight ruby %}
permalink: /:year/:month/:title/
{% endhighlight %}

The feed was a little more complicated. Taking a look at the XML feed that we had before, we had to make sure that all the data that was needed was preserved, but there wasn't any native functionality in Jekyll that could meet our needs. There was a workaround in sight though. Jekyll's templating engine wasn't just good for taking Markdown and parsing it into HTML; it could be used to create arbitrary static files that were exposed on the site. That meant I could just create something like `/feed/index.xml` and use the templating language to generate a feed! Here's what that looks like:

{% highlight xml %}
{% raw %}
---
layout: null
---
<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:wfw="http://wellformedweb.org/CommentAPI/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns:sy="http://purl.org/rss/1.0/modules/syndication/"
	xmlns:slash="http://purl.org/rss/1.0/modules/slash/"
	xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd"
	xmlns:media="http://search.yahoo.com/mrss/"
>

<channel>
	<title>{{ site.name }}</title>
	<atom:link href="{{ site.url }}/feed/" rel="self" type="application/rss+xml" />
	<link>{{ site.url }}</link>
	
	...

	{% for post in site.posts limit:40 %}
		{% unless post.draft %}
		<item>
			<title><![CDATA[{{ post.title | raw }}]]></title>
			<link>{{ site.url }}{{ post.url }}</link>
			{% for author in site.authors %}
				{% if author.id == post.author %}
					<dc:creator><![CDATA[{{ author.name }}]]></dc:creator>
				{% endif %}
			{% endfor %}
			{% for category in post.tags %}
			<category><![CDATA[{{ category }}]]></category>
			{% endfor %}
			<comments></comments>
			<pubDate>{{ post.date | date: "%a, %d %b %Y %T +0000" }}</pubDate>
			<guid></guid>
			<description><![CDATA[{{ post.excerpt | raw }}]]></description>
			<content:encoded><![CDATA[{{ post.content | raw }}]]></content:encoded>
			<wfw:commentRss></wfw:commentRss>
			<slash:comments></slash:comments>
		</item>
		{% endunless %}
	{% endfor %}
	</channel>
</rss>
{% endraw %}
{% endhighlight %}

### Pagination
This was actually one of the most fascinating technical challenges I ran into. Like I mentioned before, we have over 700 posts on our blog, and that was only going to grow, probably at an even faster speed. It was simply unreasonable to leave out pagination support. Sadly, Jekyll only has limited support for pagination. It could do so reasonably well for *all* posts, but we needed more fine grain pagination that would also filter by author and tag. In addition to the lack of customization for pagination, using the native capability *really* slowed down the build time. Pages were going through each post, each tag, and every other file trying to generate HTML for every permutation. Our build time for all posts went from about 5 seconds to several minutes, because Jekyll generation was taking `MxNxO` time. There were simply no good solutions for this natively or that other people had solved with libraries I could find.

So I ended trying something completely different. Instead of relying on Jekyll to statically generate each page up front, I decided to generate JSON with all the posts and their metadata, then lazy load that JSON via AJAX and filter using the tags and authors for that post. It meant only *one* file had to be generated instead of every permutation, there was more programmatic flexibility with JavaScript to filter, and we could inject pagination into any page for any set of posts we wanted.

Here's the `json/index.json` file that is generated by Jekyll and used to populate the overview pages on each channel:

{% highlight json %}
{% raw %}
---
layout: null
---
{
	"posts": [
		{% for post in site.posts %}
			{
				"title": "{{ post.title | raw | escape }}",
				"url": "{{ site.baseurl }}{{ post.url }}",
				"hero": "{{ post.hero }}",
				"tags": [{% for tag in post.tags %}"{{ tag }}"{% unless forloop.last %},{% endunless %}{% endfor %}],
				"categories": [{% for category in post.categories %}"{{ category }}"{% unless forloop.last %},{% endunless %}{% endfor %}],
				"date": "{{ post.date | date: "%B %e, %Y" }}",
				"author": "{{ post.author }}",
				"draft": {% if post.draft or post.date > site.time %}true{% else %}false{% endif %},
				"content": "{% if post.description %}{{ post.description | strip_html | strip_newlines }}{% else %}{% if post.excerpt %}{{ post.excerpt | markdownify | strip_html | strip_newlines }}{% else %}{{ site.description }}{% endif %}{% endif %}"
			{% if forloop.last %}}{% else %}},{% endif %}{% endfor %}
	],
	"authors": {
		{% for author in site.authors %}
		"{{ author.id }}": {
			"name": "{{ author.name }}",
			"avatar": "{{ author.avatar }}",
			"twitter": "{{ author.twitter }}",
			"url": "{{ site.baseurl }}/authors/{{ author.id }}",
			"job": "{{ author.job }}"
		{% if forloop.last %}}{% else %}},{% endif %}{% endfor %}
	}
}
{% endraw %}
{% endhighlight %}

And here's the `js/index.js` file that is in every page that loads that file in, filters the right posts, and injects the controls.

{% highlight javascript %}
{% raw %}
$(document).ready(function() {

	var page = 1;
	var data;

	if (typeof pagination !== 'undefined') {
		if (pagination === true) {
			$(".pagination").css("display", "block");
		}
	}

	if (typeof top_active !== 'undefined') {
		$("nav a." + top_active).addClass("active");
	}

	if (typeof channel !== 'undefined') {
		if (channel != 'company' && channel != 'engineering') {
			$(".subheader a.category").removeClass("active");
			$(".subheader a.category#" + channel).addClass("active");
		}
	}

	if ($("div.pagination").length > 0) {
		check_page();
	} else {
		$(".posts").css("visibility", "visible");
	}

	...

	function check_page() {
		var href = window.location.hash;
		var matched = href.match('^#page');
		if (matched) {
			var page_num = href.split("#page")[1];
			if (page_num = parseInt(page_num)) {
				page = page_num;
			}
		}
		$.getJSON(prefix + "/json/index.json", function(response) {
			console.log(response)
			if (response) {
				var result = [];
				for (key in response.posts) {
					var post = response.posts[key];
					if (post.draft) continue;
					if (typeof channel !== 'undefined') {
						if (post.tags.indexOf(channel) == - 1) {
							continue;
						}
					}
					if (typeof top_active !== 'undefined' && (top_active == "engineering" || top_active == "company")) {
						if (post.tags.indexOf(top_active) == - 1) {
							continue;
						}
					}
					if (typeof author_id !== 'undefined') {
						if (post.author != author_id) {
							continue;
						}
					}
					result.push(post);
				}
				response.posts = result;

				data = response;

				set_page(page);

				// Set total pages
				$("span.page.total_pages").html(Math.max(Math.ceil(data.posts.length / 5), 1));

				// Bind page clicks
				$("a.page").click(function() {
					var selected_page = ($(this).hasClass("older") ? page + 1 : page - 1);
					if (valid_page(selected_page)) {
						set_page(selected_page);
					}
				});

				$(window).hashchange(function() {
					var selected_page = parseInt(window.location.hash.substr(5));
					if (valid_page(selected_page)) {
						set_page(selected_page);
					}
				})
			}
		});
	}

	function set_page(page_num) {
		var max = Math.ceil(data.posts.length / 5);

		if (data == null) return;
		if (!valid_page(page_num)) {
			if (page_num > max) page_num = max;
		}

		page = page_num;

		if (typeof pagination !== 'undefined' && pagination === true) {
			window.location.hash = "#page" + page_num.toString();
		}

		$(window).scrollTop(0);

		var next = page_num + 1;
		var previous = page_num - 1;

		$("span.page.current_page").html(page_num);

		$("a.page.older").css("visibility", page_num >= max ? "hidden" : "visible");
		$("a.page.newer").css("visibility", page_num <= 1 ? "hidden" : "visible");

		var offset = (page_num - 1) * 5;

		var authors_posted = [];

		for (var i = 0; i < 5; i++) {
			var post = data.posts[offset + i];
			var article = $("article.post:eq(" + i + ")");

			article.css("border-bottom", i == data.posts.length - 1 ? "none" : null);
			if (i >= data.posts.length || typeof post == 'undefined') {
				article.css("display", "none");
				continue;
			}

			var author = data.authors[post.author];

			article.find(".title").html(post.title).attr("href", post.url);
			article.find(".avatar").attr("src", author.avatar);

			var post_info = [];

			post_info.push(post.date);
			post_info.push('By ' + author.name);
			post_info.push('In ' + post.tags.join(", "))

			article.find(".post-info").html(post_info.join(" • "));

			article.find("img.hero").attr("src", post.hero);
			article.find("a.hero_url").attr("href", post.url);

			article.find(".excerpt").html(post.content);
			article.find("a.read-more").attr("href", post.url);
			article.css("display", "block");

			var podcast = (post.tags.indexOf('podcasts') > -1);
			article.find(".podcast-container").css("display", podcast ? "block" : "none");
			
			var no_background = (podcast || post.hero.length == 0);
			article.find(".hero-container").css("display", no_background ? "none" : "block");

			var auth = $("#authors-container .author-container:eq(" + i + ")");
			if (auth && authors_posted.indexOf(author.twitter) == -1) {
				auth.find(".avatar-link").attr("href", author.url);
				auth.find(".avatar").attr("src", author.avatar);
				auth.find(".name-link").attr("href", author.url).html(author.name);
				auth.find("p.job").html(author.job);
				authors_posted.push(author.twitter);
				auth.css("display", "block");
			} else {
				auth.css("display", "none");
			}
		}

		$(".posts").css("visibility", "visible");
	}

	function valid_page(page_num) {
		return (page_num > 0 && page_num <= Math.max(Math.ceil(data.posts.length / 5), 1))
	}
});
{% endraw %}
{% endhighlight %}

### Comments

The last thing I want to go over is comments. Comments are a really important part of our blog - if they weren't preserved, we'd be missing out on a huge amount of context and losing valuable content by our community. It was critical that capability was maintained and that we also migrate all the previous comments over. There was really only one common solution we found that was compatible: Disqus.

Now, I don't have many issues with Disqus as a product - I've seen them work really well on other platforms, but it meant we had to sacrifice a few things like Stack Exchange login capability. Those were things we could reasonably deal with. The main problem was importing comments from WordPress. We ran into *so* many issues trying to do this import well:

- Using Disqus' built-in WXR importer to take the XML export from WordPress and migrate (errors, didn't work)
- Using their official plugin on WordPress, installing, and doing a sync (also didn't work)
- Using their API to parse the XML, and create threads and posts into our account (didn't work either, API is not very well documented and kept running into auth errors)

The worst part of this is how unsupported we were by the Disqus team. We waited on the order of *weeks* for support responses and for over a month they went unresolved. Sending in official support tickets, emails, and posts on their Discuss forum went unnoticed. Even tweeting didn't seem to work:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/disqushelp">@disqushelp</a> Trying to move the Stack Overflow blog to Disqus, but imports (even with all troubleshoot attempts) not working. Case #437292</p>&mdash; Jon Chan (@JonHMChan) <a href="https://twitter.com/JonHMChan/status/600387363148206080">May 18, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/disqushelp">@disqushelp</a> Guys - any update on #437292? WP import is our last hurdle to launching.</p>&mdash; Jon Chan (@JonHMChan) <a href="https://twitter.com/JonHMChan/status/601471166155399169">May 21, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/disqushelp">@disqushelp</a> Guys - I&#39;ve had a support ticket open for over 2 weeks now #437292. Any progress on this?</p>&mdash; Jon Chan (@JonHMChan) <a href="https://twitter.com/JonHMChan/status/604309544315944960">May 29, 2015</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

In the end, we opted to do something else entirely: we would do a manual import of comments to date and statically generate JSON that would be lazy loaded and injected into individual posts. These would simply be HTML that we marked as archived comments. You can see the heart of the Python script to generate the JSON I wrote here:

{% highlight python %}
result = {}
for post in blog_data:
	slug = post["url"].replace("http://blog.stackexchange.com", "")
	slug = slug[:-1] if slug[:1] == "/" else slug
	result[slug] = []
	for comment in post["comments"]:
		del(comment["author_email"])
		del(comment["ip_address"])
		date_posted = time.strptime(comment["date"], "%Y-%m-%d %H:%M:%S")
		comment["date"] = time.strftime("%b %d, %Y", date_posted)

		result[slug].append(comment)

	json_result = json.dumps({"response": result[slug]})

	parts = slug.split("/")
	if len(parts) < 3:
		print slug
		print parts
	directory = "json/comments/" + parts[1] + "/" + parts[2]

	if not os.path.exists(directory):
		os.makedirs(directory)

	f = open("json/comments" + slug + ".json", "w")
	f.write(json_result)
{% endhighlight %}

For commenting moving forward, we would use Disqus with a blank slate. If they ever got back to us or helped us with an import, we would backfill it then (we still want their help!) We simply couldn't keep delaying shipping the new blog and found an interim solution.

## Final thoughts
This was a much larger project than I had originally anticipated, but I'm very happy with the results. Early feedback has been pretty positive, and while there were inevitably bugs with such a huge migration, with Meta and the code open sourced, we're fixing them quickly. We've even received pull requests already with changes and bug fixes.

In the end, I'm glad that there's finally a single destination for our engineering team to reach out to the technical community we love being a part of. You'll see much more content like this from our engineering team moving forward, and we'd love to hear your feedback. Until next time!

*Jon is a developer and heads up evangelism efforts at Stack Exchange. You can follow him on [Twitter](https://twitter.com/jonhmchan).*
