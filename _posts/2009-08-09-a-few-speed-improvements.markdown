---
author: jeffatwood
comments: true
date: 2009-08-09 23:27:21+00:00
layout: post
redirect_from: /2009/08/a-few-speed-improvements
slug: a-few-speed-improvements
title: A Few Speed Improvements
wordpress_id: 1803
tags:
- company
- background
---


Over the weekend, we rolled out a few speed improvements to the Stack Overflow engine.



First, we did a quick pass with [ANTS Profiler](http://www.red-gate.com/products/ants_performance_profiler/index.htm?utm_source=stack&utm_medium=weblink&utm_content=jeff-article&utm_campaign=antsperformanceprofiler) (which is _great_, by the way) and identified a few places where redundant or unnecessary database queries slipped into our code. We like to do this every few months on common pages as a sanity check. We start a trace, refresh a given page 50 times, then view the hot code paths in the trace. It's **almost always database queries gunking up the works**, but once in a blue moon we'll write code so bad that it actually registers in the hot code paths. Anyway, the golden rule is to measure, _then_ optimize, and that's what we try to do.



We also took a long, hard look at **optimizing the browser cookies** we're sending down to clients (and thus, clients are dutifully sending back to us in each HTTP request). [You'd be surprised how big an impact on performance cookies can be](http://yuiblog.com/blog/2007/03/01/performance-research-part-3/). We were able to remove our [ASP.NET forms authentication cookie](http://support.microsoft.com/kb/910443) entirely, and cut the length of our standard cookie key in half. I also removed a number of cookies that the /login page was storing which weren't really necessary. In my testing our typical cookie is about 360 bytes now, compared with over 500 bytes before. Over time, these old unnecessary cookies will fall away naturally, but you may want to clear your domain cookies manually if you want the _fastest possible_ Stack Overflow family browsing experience.



This isn't as new, but it's worth mentioning. A few weeks ago, we **turned up the HTTP GZIP compression level for dynamic content** from the default of 0 to 4. That's ever-so-slightly slower, but offers an additional 10% reduction in page size. The tradeoff between CPU performance and file size for this setting is [documented in exhaustive detail by Scott Forsyth](http://weblogs.asp.net/owscott/archive/2009/02/22/iis-7-compression-good-bad-how-much.aspx) and the "sweet spot" is definitely 4.



(Another item that similarly isn't new, but always a solid best practice, is to **minify your JavaScript and CSS**. We've had our build script set up to do this for months, using the Java based [YUI Compressor](http://developer.yahoo.com/yui/compressor/).)



We've been long time users of [YSlow](http://developer.yahoo.com/yslow/), and more recently [Google Page Speed](http://code.google.com/speed/page-speed/). Some of the recommendations these tools make are [only sensible if you are Google or Yahoo](http://www.codinghorror.com/blog/archives/000932.html) (a very rare and select club of the 'gee, _that's_ a nice problem to have' variety) -- but many of them are indeed essential no matter how big your website is. 



One of the [last remaining YSlow / Page Speed recommendations](http://meta.stackoverflow.com/questions/6864/stackoverflow-site-yslow-grade-b) that we felt was worth tackling was [Use Cookie-free Domains for Components](http://developer.yahoo.com/performance/rules.html#cookie_free). 





>
When the browser makes a request for a static image and sends cookies together with the request, the server doesn't have any use for those cookies. So they only create network traffic for no good reason. You should make sure static components are requested with cookie-free requests. Create a subdomain and host all your static components there.

> 
> 
If your domain is www.example.org, you can host your static components on static.example.org. However, if you've already set cookies on the top-level domain example.org as opposed to www.example.org, then all the requests to static.example.org will include those cookies. In this case, you can buy a whole new domain, host your static components there, and keep this domain cookie-free. Yahoo! uses yimg.com, YouTube uses ytimg.com, Amazon uses images-amazon.com and so on.

> 
> 
Another benefit of hosting static components on a cookie-free domain is that some proxies might refuse to cache the components that are requested with cookies. On a related note, if you wonder if you should use example.org or www.example.org for your home page, consider the cookie impact. Omitting www leaves you no choice but to write cookies to *.example.org, so for performance reasons it's best to use the www subdomain and write the cookies to that subdomain. 
</blockquote>





We registered the domain [sstatic.net](http://sstatic.net/) for this purpose a month ago, and I'm pleased to announce that **all the static resources for the Stack Overflow family of websites are now hosted at sstatic.net**. This domain is of course cookieless and optimized for serving static content with the lowest possible overhead (and, as before, a far-future expires header, so _zero_ requests are made to the server for cached static elements). 



Here's a sample get / response for the new configuration.




    
    
    <b>GET</b> /so/js/master.js?v=4143 HTTP/1.1
    <b>Host:</b> sstatic.net
    <b>User-Agent:</b> Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.2) 
                Gecko/20090729 Firefox/3.5.2 (.NET CLR 3.5.30729)
    <b>Accept:</b> */*
    <b>Accept-Language:</b> en-us,en;q=0.5
    <b>Accept-Encoding:</b> gzip,deflate
    <b>Accept-Charset:</b> ISO-8859-1,utf-8;q=0.7,*;q=0.7
    <b>Keep-Alive:</b> 300
    <b>Connection:</b> keep-alive
    <b>Referer:</b> http://stackoverflow.com/questions/1252349
    <b>Pragma:</b> no-cache
    <b>Cache-Control:</b> no-cache
    





And the response from sstatic.net:




    
    
    <b>HTTP/1.1</b> 200 OK
    <b>Cache-Control:</b> max-age=604800
    <b>Content-Type:</b> application/x-javascript
    <b>Content-Encoding:</b> gzip
    <b>Last-Modified:</b> Sun, 09 Aug 2009 18:45:13 GMT
    <b>Accept-Ranges:</b> bytes
    <b>ETag:</b> "75e6f1872119ca1:0"
    <b>Vary:</b> Accept-Encoding
    <b>Server:</b> Microsoft-IIS/7.0
    <b>Date:</b> Sun, 09 Aug 2009 23:40:45 GMT
    <b>Content-Length:</b> 10417
    <i>(... gzipped data ...)</i>
    





Look, ma, no cookies! (yes, I'd love to [kill the Server header](http://stackoverflow.com/questions/1178831/remove-server-response-header-iis7) and [ETag header](http://stackoverflow.com/questions/477913/how-do-i-remove-etag-headers-from-iis7/1250987#1250987) in the response, but that's not so easy.)



Using another server for your static content is also a rudimentary form of load balancing; we've shaved off hundreds of thousands of requests from our primary servers and delegated them to another server explicitly optimized for and dedicated to that task. Web browsers also tend to "parallelize" their load patterns for the page when they see resources coming from different domains -- or a different subdomain, at least. 



Anyway, we believe that **performance is a feature**, and we're serious about the Stack Overflow family of sites being as fast as we can make them. We continue to revisit our performance every couple of months and try to improve it a little more each time.

