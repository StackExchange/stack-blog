---
author: jeffatwood
comments: true
date: 2010-10-22 06:19:34+00:00
layout: post
redirect_from: /2010/10/datacenter-migration-oct-23
hero: 
slug: datacenter-migration-oct-23
title: Datacenter Migration Oct. 23
wordpress_id: 5869
tags:
- company
- server
---

This **Saturday, October 23rd**, starting at about 2 PM Pacific, we will be migrating all of our primary sites from the **Corvallis, OR** datacenter to the **New York, NY** datacenter.

![](/images/wordpress/oregon-to-nyc-server-trail.png)

Please be advised that this is a major move, and while we will do everything we can to prevent major service interruptions (largely with a read-only site mode we're introducing), **there may be a few hours of unavoidable downtime**.

This move is good news, though:





  * NYC is approximately [80 milliseconds closer](http://serverfault.com/questions/137348/how-much-network-latency-is-typical-for-east-west-coast-usa) to Europe, which is where a significant portion of our audience arrives from. And of course dramatically closer to the rest of the east coast of the USA.

  * The Peer 1 internet network infrastructure should be faster.

  * The servers all have twice as much memory (16 GB web tier, 64 GB database tier) and their CPUs are one generation ahead of what we have in Corvallis (Core 2 vs Core i7 class).

  * There's a lot more of ... [uh, everything](http://blog.serverfault.com/post/1432571770/stack-overflows-new-york-data-center).


At _worst_ this NYC configuration will be the same speed overall -- but much more robust. At _best_, you should notice 100 to 150 millisecond improvement in response time on every single page.

As always, you can read real time updates and details about the move on [blog.serverfault.com](http://blog.serverfault.com).

update: this migration is now complete. We have a few very minor things left to clean up, but for the most part everything should be working as before.
