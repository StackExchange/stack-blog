---
author: jeffatwood
comments: true
date: 2009-02-27 10:33:44+00:00
layout: post
redirect_from: /2009/02/happy-100000th-question
slug: happy-100000th-question
title: Happy 100,000th Question!
wordpress_id: 760
tags:
- company
- community
---


I've been remiss in not celebrating an important Stack Overflow milestone. Sometime on Wednesday, February 25th, a user asked.. 





## Our 100,000th Question!





![birthday-cake-animated](/images/wordpress/birthday-cake-animated.gif)



I didn't say it was a _good_ question, mind you. But it _was_ the hundred thousandth question posted to Stack Overflow.



So, for reference -- and remember our [private beta](http://blog.stackoverflow.com/2008/07/stack-overflow-private-beta-begins/) started on 7/31/2008, and the [public beta](http://blog.stackoverflow.com/2008/09/then-a-miracle-occurs-public-beta/) on 9/15/2008 -- here's how many questions and answers have been posted to date, by month:



<table cellpadding="4" cellspacing="4" >
<tr >
<td >
<td >Questions
<td >Answers</tr>
<tr >
<td >July 08
<td align="right" >5
<td align="right" >4</tr>
<tr >
<td >August 08
<td align="right" >4,612
<td align="right" >25,488</tr>
<tr >
<td >September 08
<td align="right" >16,291
<td align="right" >89,369</tr>
<tr >
<td >October 08
<td align="right" >16,474
<td align="right" >74,469</tr>
<tr >
<td >November 08
<td align="right" >14,164
<td align="right" >54,752</tr>
<tr >
<td >December 08
<td align="right" >13,587
<td align="right" >55,273</tr>
<tr >
<td >January 09
<td align="right" >17,741
<td align="right" >70,612</tr>
<tr >
<td >February 09*
<td align="right" >15,941
<td align="right" >60,397</tr>
</table>



We are pretty regularly doing **500k pageviews per day now**. Geoff has also been tracking our bandwidth usage through [the most excellent Cacti tool](http://www.cacti.net/). Here's what the last 24 hour period looks like:



![soweb1-traffic-daily-cacti-graph](/images/wordpress/soweb1-traffic-daily-cacti-graph.png)



So far:




  * peak of 6 Mbit/sec or 750 KB/sec

  * average of 4 Mbit/sec or 512 KB/sec




That's actually a lot for a site like ours which is nearly 100% text with precious few images.



And compressed text at that! We've [had the GZIP religion for a long time](http://developer.yahoo.net/blog/archives/2007/07/high_performanc_3.html), but last night we went through and double checked everything to be sure. I did some port 80 sniffing and found a few cases where content wasn't served up compressed, even when the client asked for it. Looking for commonalities and doing research, I discovered that **HTTP 1.0 traffic and proxy traffic wasn't being compressed**. Turns out those are both [off by default in IIS 7](http://msdn.microsoft.com/en-us/library/ms690689.aspx). I turned them on like so:




    
    
    %windir%\system32\inetsrv\appcmd set config 
        /section:httpCompression /noCompressionForHttp10:false
    %windir%\system32\inetsrv\appcmd set config 
        /section:httpCompression /noCompressionForProxies:false
    





I was surprised how many proxies actually identify themselves as HTTP 1.0, given [how ancient HTTP 1.1 is](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol). It's especially ironic considering many of these very same proxies _asked_ for gzip content -- I'm not sure GZIP compression is even valid under HTTP 1.0.



But I digress. **Congratulations to everyone who has helped make Stack Overflow a success by asking and answering questions.** Here's to many more years of learning together!



* partial data up to Feb 24th

