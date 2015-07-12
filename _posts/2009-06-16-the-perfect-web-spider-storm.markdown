---
author: jeffatwood
comments: true
date: 2009-06-16 06:46:33+00:00
layout: post
redirect_from: /2009/06/the-perfect-web-spider-storm
hero: 
slug: the-perfect-web-spider-storm
title: The Perfect Web Spider Storm
wordpress_id: 1476
tags:
- company
- background
- server
---


We noticed something unusual on our [Cacti](http://www.cacti.net/) graphs today. Can you spot it?



![stackoverflow-cacti-graph-june-15-2009](/images/wordpress/stackoverflow-cacti-graph-june-15-2009.png)



Yes! The light gray of the graph background _does_ seem a few shades lighter than normal! I see it too!



No, no, of course I'm talking about that massive traffic spike from 06:00 to 15:00 PST (server time). In [the words of The Office's David Brent](http://www.youtube.com/watch?v=3nyCIqJP_4s):





<blockquote>
I think there's been a rape up there!
</blockquote>





Bandwidth isn't usually a problem for us, as we are heavily text-oriented and go to great lengths to [make sure all our text content is served up compressed](http://blog.stackoverflow.com/2009/02/happy-100000th-question/). This is almost 3x our normal _peak_ traffic level. And for what?



Geoff ran a few queries in [Log Parser](http://www.microsoft.com/downloads/details.aspx?FamilyID=890cd06b-abf8-4c25-91b2-f8d975cf8c07&displaylang=en) and found that this is yet another instance of **a perfect web spider storm**. Here are the top 3 bandwidth consumers in the logs for that day:



<table width="600" >
<tr >
<td ><strong>IP</strong>
<td ><strong>User-Agent</strong>
<td align="right" ><strong>Requests</strong>
<td align="right" ><strong>Bytes Served</strong></tr>
<tr >
<td >72.30.78.240
<td ><a href="http://help.yahoo.com/help/us/ysearch/slurp">Yahoo! Slurp/3.0</a>
<td align="right" >56,331
<td align="right" >1,124,861,780</tr>
<tr >
<td >66.249.68.109
<td ><a href="http://www.google.com/bot.html">Googlebot/2.1</a>
<td align="right" >56,579
<td align="right" >773,418,834</tr>
<tr >
<td >66.249.68.109
<td >Mediapartners-Google
<td align="right" >30,519
<td align="right" >671,904,609</tr>
</table>



As I mentioned, this has happened to us before -- and we've considered [dynamically blocking excessive HTTP bandwidth use](http://serverfault.com/questions/20383/dynamically-blocking-excessive-http-bandwith-use). But first we politely asked the Yahoo and Google web spider bots to play a bit nicer:







  1. We updated our [robots.txt](http://stackoverflow.com/robots.txt) to include the `Crawl-delay` directive, like so:




    
    
    User-agent: Slurp
    Crawl-delay: 1
    
    User-agent: msnbot
    Crawl-delay: 1
    



  2. We went to [Google Webmaster Tools](https://www.google.com/webmasters/tools/) and told Google to send no more than 2 Googlebot search engine spider requests per second.




That was a week ago. Obviously, it isn't working.



Now we'll have to do this the hard way. Fortunately, Geoff (aka [Valued Stack Overflow Associate #00003](http://blog.stackoverflow.com/2009/05/welcome-stack-overflow-valued-associate-00003/)) has a "spare" [Cisco PIX 515E](http://www.cisco.com/en/US/products/hw/vpndevc/ps2030/ps4094/) laying around that we plan to put in front of the web servers, so we can dynamically throttle the offenders. But we can't do that for a week or so. 



In the meantime, since Yahoo (via Slurp!) is about 0.3% of our traffic, but insists on rudely consuming a huge chunk of our prime-time bandwidth, **they're getting IP banned and blocked**. I'm a bit more sympathetic to Google, since [they deliver almost 90% of our traffic](http://www.codinghorror.com/blog/archives/001224.html), but it sure would be nice if they'd allow me to at least schedule the massive web spider storms for off-peak hours...

