---
author: jeffatwood
comments: true
date: 2011-05-17 11:48:58+00:00
layout: post
redirect_from: /2011/05/the-speed-of-light-sucks
hero: 
slug: the-speed-of-light-sucks
title: The Speed of Light Sucks
wordpress_id: 8158
tags:
- company
- community
- server
- stackexchange
---

Our [current datacenter](http://blog.serverfault.com/post/1432571770/) is in **New York City**. Yep, [where they make all that great salsa](http://www.youtube.com/results?search_query=%22pace+picante%22+get+a+rope). So whenever you make a request to any [Stack Exchange site](http://stackexchange.com/sites), the internet tubes must connect from your location to our datacenter in NYC. We are not (yet) immune to the laws of physics, so depending on the distance between you and NYC this ... can take a while.

As John Carmack [once so eloquently said](http://www.wired.com/wired/archive/4.08/id_pr.html):



<blockquote>
  The speed of light sucks.
</blockquote>



But there _is_ a workaround of sorts. [As of summer 2009](http://blog.stackoverflow.com/2009/08/a-few-speed-improvements/) we currently serve all our static content (that is, stuff that does not change on every request) such as JavaScript, images, CSS, etc. from [sstatic.net](http://sstatic.net). Since these files don't change very often, there's no reason they have to be served directly by us; we can offload our static files to a [content delivery network](http://en.wikipedia.org/wiki/Content_delivery_network).

A good CDN has a network of fast nodes all over the world.

![](/images/wordpress/cdn-world-map.png)

With a CDN, when you make a request for, say, `favicon.ico` -- that particular file doesn't have to be delivered from our NYC datacenter. It can come from a server in the CDN closer to _you_. Yes, these files are usually cached, but you do have to retrieve them at least once and sometimes a few times a day. The resulting performance improvement can be quite dramatic, particularly for that first click!

We're currently evaluating our CDN options and we want to measure the real-world improvements of a few different CDNs.





  * **sstatic**  

[http://sstatic.net/js/full.js](http://sstatic.net/js/full.js)


  * **NetDNA**  

[http://sstatic.stackexchange.netdna-cdn.com/js/full.js](http://sstatic.stackexchange.netdna-cdn.com/js/full.js)


  * **Amazon**  

[http://d1d5ue6vu5b30i.cloudfront.net/js/full.js](http://d1d5ue6vu5b30i.cloudfront.net/js/full.js)


  * **EdgeCast**  

[http://wac.43df.edgecastcdn.net/8043DF/sstatic/js/full.js](http://wac.43df.edgecastcdn.net/8043DF/sstatic/js/full.js)



Make a few requests to each of these links, using Ctrl-F5 / Command-Shift-R to force a redownload instead of using a cached version, and record the typical duration of a download.

In Chrome, you can see detailed download times via the "Network" tab of the Developer Tools, which can be invoked via Ctrl-Shift-I.

![](/images/wordpress/chrome-dev-tools-network.png)

In Firefox with [Firebug](http://getfirebug.com/), download timing is on the "Network" tab, too:

![](/images/wordpress/firefox-firebug-network.png)

The result in the Chrome screenshot is **576ms**; in the Firefox screenshot it's **490ms**.



## Please use [this Google form](https://spreadsheets.google.com/spreadsheet/viewform?formkey=dGx1RW1sNHlzMDR4UV9TODZCWk9fNFE6MQ) to enter your results.



With your data in hand, we hope to choose a killer CDN that makes Stack Exchange faster all over the world!



update: now with results! The percentages here mean _percent better than sstatic.net_ which is our default CDN in NYC.
![](/images/wordpress/cdn-performance-test-world-map.png)



