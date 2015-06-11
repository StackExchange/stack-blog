---
author: jeffatwood
comments: true
date: 2009-02-06 10:34:09+00:00
layout: post
redirect_from: /2009/02/server-speed-tests
hero: 
slug: server-speed-tests
title: Server Speed Tests
wordpress_id: 604
tags:
- company
- server
---


We now have [the new servers](http://blog.stackoverflow.com/2009/01/new-stack-overflow-servers-ready/) set up in the data center, and configured with copies of the Stack Overflow website and database. We excitedly ran a few quick speed comparisons with the live site and found.. the new site was two times slower than the old one.



(insert sound of analog record needle being ripped off a record, here.)



Er.. _what?_



That was our reaction too. These servers have [2 - 4x the memory, 1.5x the processing power, and faster drive arrays](http://blog.stackoverflow.com/2009/01/new-stack-overflow-server-glamour-shots/). How could they possibly be slower?



Through a process of elimination, we deduced the following:







  1. Lightweight pages on the new site indeed load faster. This means the **web tier** is probably OK.

  2. A long-ish running SQL query extracted from the old database server, runs faster when executed manually against the new database server. This means the **database tier** is probably OK.

  3. The more heavyweight the page, the more pronounced the slowdown. This led us to believe **the network** was the culprit.




We double and triple checked all our network settings, and verified our little [NetGear GS108T managed switch](http://www.newegg.com/Product/Product.aspx?Item=N82E16833122203) was configured properly and had the latest firmware. We couldn't find a single thing wrong or misconfigured. This was turning into a real mystery. We were pondering whether we'd have to eliminate the switch and try a direct crossover ethernet connection between the web tier and database tier.



While we were discussing it, I figured I'd update the network drivers from the default provided with Windows to the [latest versions from Broadcom's website](http://www.broadcom.com/support/ethernet_nic/downloaddrivers.php). It's a little risky when done remotely, but it worked. 



To my utter amazement, **once the network drivers were updated on both tiers, our performance magically went from 2x slower to 2x _faster!_** Here's a [firebug](http://getfirebug.com/) network trace of me retrieving my user page on both servers.



Existing site:



![stackoverflow-firebug-old-server](/images/wordpress/stackoverflow-firebug-old-server.png)



New site:



![stackoverflow-firebug-new-server](/images/wordpress/stackoverflow-firebug-new-server.png)



For context, prior to the network driver update, this page was taking over _900 milliseconds_ to load on the new servers. Just the page itself, mind you, everything else was on top of that. The overall time was around 1.35 seconds average. Ouch!



Going from 715ms to 560ms user page load time is the kind of performance increase we expected from the new hardware. Note that I cherry-picked the best page load time from the old server here, versus an average page load time from the new server. In the typical case it'd be even faster. We expect a lot of the heavier pages on Stack Overflow will load anywhere from 50% to 100% faster. We're planning to switch over to the new servers on Sunday, if everything goes as planned.



I guess the lesson here is the same one I learned last time: **always update your drivers to the absolute latest versions, or you'll be sorry. Really sorry!** I had no idea out-of-date network drivers could cause such catastrophically bad performance. I guess I do now.

