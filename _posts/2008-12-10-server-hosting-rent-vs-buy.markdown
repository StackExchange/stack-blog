---
author: jeffatwood
comments: true
date: 2008-12-10 06:59:19+00:00
layout: post
redirect_from: /2008/12/server-hosting-rent-vs-buy
slug: server-hosting-rent-vs-buy
title: Server Hosting -- Rent vs. Buy?
wordpress_id: 157
tags:
- company
- server
---


As Stack Overflow continues to grow, it's time to revisit our server hosting situation.



We currently rent [two identical dedicated servers from CrystalTech](http://blog.stackoverflow.com/2008/04/our-dedicated-server/), which has been an excellent and responsive host for not only SO but Coding Horror as well. If you're in the market for Windows hosting, I can recommend them without reservation.



[![Powered By CrystalTech Web Hosting](https://i.stack.imgur.com/gSHMf.png)](http://crystaltech.com/dedicated-windows.aspx?uid=101)



Although the monthly rates are extremely reasonable, we're starting to see **pressure on our database server for more than 4 GB of memory**. SQL Server has an insatiable appetite for memory, and given the ridiculously low cost of memory these days, it seems crazy not to build a server box with 8 GB at the very minimum -- and possibly 16 GB or 24 GB depending on how much the server will accept.



Unfortunately, upgrading memory on our rental servers isn't really an option, as the monthly cost increase for the memory upgrade would nearly _double_ our monthly hosting fees. This says more about how insanely great our existing deal is than anything else, but it's still a bummer. The rental model is something we want to move away from in the longer term, anyway: the more we grow, the more servers we add, the more our monthly costs increase.



So, instead, we're looking at **buying our own servers and renting rack space**. This way we pay a fixed one-time cost for the servers, and the monthly cost for the rack space plus bandwidth stays the same (mostly, depending on our bandwidth usage).



I'm currently looking at the [Lenovo ThinkServer RD120](http://www.buy.com/prod/lenovo-thinkserver-rd120-server-xeon-1-86ghz-2gb-ddr2-sdram-raid/q/loc/101/209246521.html).



![lenovo thinkserver rd120](/images/wordpress/lenovo-thinkserver-rd120.jpg)



This guy is about $1,500 in a barebones configuration:







  * Two Intel Xeon processor sockets

  * Up to 6 hard drives

  * RAID controller supporting 0, 1, 1E, 5, 6, 10 RAID

  * Up to 48GB DDR2-667 ECC memory (12 memory slots)

  * Dual gigabit ethernet

  * 835w redundant power supply




(I considered building my own rack mount [using Google-style commodity computer parts in a rack case](http://www.codinghorror.com/blog/archives/000814.html), but quality RAID, dual-socket, and redundant power supplies are sort of hard to come by in typical consumer computer parts. Starting with a pre-built server chassis that has the correct redundant power and hard drive setup already configured seems like the smarter move here.)



See [the downloadable hardware maintenance manual](http://www-307.ibm.com/pc/support/site.wss/MIGR-70408.html) for details. We'd need to add the following, which I priced a week ago on NewEgg:



<table cellpadding="4" width="400" cellspacing="4" >
<tr >
<td >Two 2.5 Ghz Xeon quad core CPUs
</td>
<td >$700
</td></tr>
<tr >
<td >Six 500 GB 7,200 rpm SATA drives
</td>
<td >$450
</td></tr>
<tr >
<td >Twelve 2 GB ECC DDR2-667 DIMMs
</td>
<td >$500
</td></tr>
</table>



That puts it at $500 + $450 + $700 + $1,500 = **$3,150 for a very beefy server indeed (Eight 2.5 GHz CPUs, 24 GB RAM, 500 GB RAID 10)**. 



This is _substantially_ better than our existing rented dedicated server configuration (Eight 1.8 Ghz CPUs, 4 GB RAM, 320 GB RAID 5).



We only need a server this powerful for the database; for the web tier, a smaller [Lenovo ThinkServer RS110 1U](http://www.buy.com/prod/lenovo-thinkserver-rs110-server-1-x-core-2-duo-2-53ghz-1gb-ddr2-sdram/q/loc/101/209246526.html) with basic RAID, 4 GB, and a single quad-core CPU would probably be sufficient.



Yes, the initial up front cost would be pretty high -- but we could slightly more than recoup the cost of one uber-beefy database server in a single year if we save just $300 per month. And we'd easily do that by renting rack space.



**What are your thoughts on rent vs. buy when it comes to server hosting?** Also, we're definitely seeking quotes on rack space if you know any great providers -- our requirements are five 2U slots (mostly for future expansion), and about 1250 GB per month of bandwidth at the moment (ditto).

