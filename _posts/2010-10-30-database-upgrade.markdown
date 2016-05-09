---
author: jeffatwood
comments: true
date: 2010-10-30 08:23:24+00:00
layout: post
redirect_from: /2010/10/database-upgrade
hero: 
slug: database-upgrade
title: Database Upgrade
wordpress_id: 5909
tags:
- company
- server
---

As part of our [datacenter migration](http://blog.stackoverflow.com/2010/10/datacenter-migration-oct-23/), the database server received a substantial upgrade:

<table cellpadding="4" cellspacing="4" >
<tr >

<td >
<strong>Oregon</strong><br/>
48 GB<br/>
2 Xeon X5470 CPUs<br/>
8 total cores @ 3.33 Ghz

</td>

<td >
<strong>NYC</strong><br/>
64 GB<br/>
2 Xeon X5680 CPUs<br/>
12 total cores @ 3.33 GHz

</td>
</tr>
</table>

However, a few things didn't go quite to plan in the migration. Much to our chagrin, **the database server ended up being barely faster** -- and maybe even a bit slower than our old database! This was deeply troubling.

[![](https://i.stack.imgur.com/2pkYi.jpg)](http://d116.com/spud/)

The new Nehalem CPUs (what you may know as Core i7) are sort of _meh_ on the desktop, but they are **monsters on the server**. It's not unusual to see 200% performance increases going from Core 2 class server CPUs, like the ones we have in Oregeon, to these newer Core i7 class server CPUs. Just [ask AnandTech's Johan De Gelas](http://www.anandtech.com/show/2743/17):



<blockquote>
The Nehalem architecture only caused a small ripple in the desktop world, mostly due to high pricing and performance that only shines in high-end applications. However, it has created a giant tsunami in the server world. The Xeon 5570 doubles the performance of its predecessor in applications that matter to more than 80% of the server market. Pulling this off without any process technology or clock speed advantage, without any significant increase in power consumption, is nothing but a historic achievement for the ambitious and talented team of Ronak Singhal.
</blockquote>



So ... yeah. We should be seeing performance improvements, and _big ones_, not the break-even parity (at best!) we were actually seeing.

We began looking into it and troubleshooting. That's why there was some downtime around 5 pm Pacific the last few days. We were messing around with our primary and backup database servers in NYC. Here's what we tried:





  1. We thought maybe the combination of SQL Server 2008 R2 and Intel's next-gen HyperThreading were [not mixing well](http://serverfault.com/questions/194377/will-disabling-hyperthreading-improve-performance-on-our-sql-server-install). We're still not sure, but we opted to be on the safe side and disable HyperThreading for now; 12 _real, physical_ cores seems like plenty for our workload without adding fake logical CPUs to the mix.


  2. We realized we had mixed up CPUs a bit and we didn't have the correct CPU in the server. Close, but not quite right. This was easy enough to fix with a CPU swap, but it alone was not enough to explain the performance issues.


  3. After trying a few other minor things, and with a nudge from [Brent "database ninja" Ozar](http://www.brentozar.com/) we narrowed it down to **the clock speed of the CPUs themselves**. Despite having [set high performance mode in Windows Server 2008 R2's power management control panel](http://serverfault.com/questions/94212/does-cpu-power-management-affect-server-performance), the CPUs weren't clocking up at all under load -- we were seeing about half the clock speed under load we should have.


Kyle [asked why our CPUs weren't clocking up on Server Fault](http://serverfault.com/questions/196301/disable-cpu-scaling-in-windows-server-2008-r2). In the process of asking the question and researching it ourselves, we discovered the answer. These Dell servers were inexplicably shipped with BIOS settings that  ...





  * did not allow the host operating system to control the CPU power settings

  * did not set the machine to high performance mode

  * did not scale CPU speed under load properly


... kind of the worst of all worlds. But Kyle quickly flipped a few BIOS settings so that the machine was set to "hyperspeed mode", and performance suddenly got a lot better. How much better? 

![](/images/wordpress/nydb11.png)

My benchmarks, let me show you them! This is **an average of 10 SQL query runs on a copy of the Stack Overflow database**, under no (or very little) real world load.

<table cellpadding="4" cellspacing="4" >
<tr >

<td >
</td>

<td >OR DB2  
2.5 Ghz
</td>

<td >OR DB1  
3.33 GHz
</td>

<td >NYC DB2  
3.33 Ghz
</td>
</tr>
<tr >

<td >gnarly query for Sportsmanship badge
</td>

<td >3177 ms
</td>

<td >2919 ms
</td>

<td >1285 ms
</td>
</tr>
<tr >

<td >simple full text query
</td>

<td >555 ms
</td>

<td >423 ms
</td>

<td >335 ms
</td>
</tr>
</table>

Notice that **database performance scales nearly linearly with CPU speed**. This has always been the case in our benchmarking, but our dataset fits in memory. I don't think that's unusual these days. Building a 64 GB server like this one is not terribly expensive any more -- and solid state drives are bridging the gap between disk and memory performance at 256 GB and beyond. Anyway, the received wisdom that "database servers need fast disks above all else" is kind of a lie in my experience. Paying extortionate rates for a crazy fast I/O subsystem is a waste; instead, spend that money on _really_ fast CPUs and as much memory as you can afford.

Most of all, _there's_ the crushing 2x Nehalem Xeon performance increase we would expect to see! It's "only" 25% faster on full text operations, but we'll take that too!

So, our apologies for the downtime. We tried to share everything we learned in the process here and on Server Fault so the community can benefit. We hope this upgrade brings a faster and more responsive set of [Stack Exchange sites](http://stackexchange.com/sites) to you!

(and if you'd like oodles more datacenter details, do [check out the Server Fault blog](http://blog.serverfault.com).)
