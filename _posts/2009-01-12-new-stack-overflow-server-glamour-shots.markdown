---
author: jeffatwood
comments: true
date: 2009-01-12 06:59:34+00:00
layout: post
redirect_from: /2009/01/new-stack-overflow-server-glamour-shots
hero: 
slug: new-stack-overflow-server-glamour-shots
title: New Stack Overflow Server Glamour Shots
wordpress_id: 381
tags:
- company
- server
---


In [Server Hosting — Rent vs. Buy?](http://blog.stackoverflow.com/2008/12/server-hosting-rent-vs-buy/) I solicited opinions on whether it made more sense to continue renting our Stack Overflow servers, or to buy them. Thanks for everyone's feedback on that!



Now the die is cast -- **check out these sexy glamour shots of the two (soon to be three) _new_ Stack Overflow servers**:



![stackoverflow-lenovo-servers-overview](/images/wordpress/stackoverflow-lenovo-servers-overview.jpg)



Feast your eyes on that hot, _sweet_ server hardware!



We plan to have three servers for now, but we did secure a half rack at our hosting provider for future expansion, as necessary. Here's what we'll be shipping to them initially:







  * 2 x Lenovo [ThinkServer RS110](http://www.google.com/search?q=lenovo+thinkserver+rs110) 1U -- web tier

  * 1 x Lenovo [ThinkServer RD120](http://www.google.com/search?q=lenovo+thinkserver+rd120) 2U -- database tier




The 1U web tier servers are modest:



![lenovo-rs110-overview](/images/wordpress/lenovo-rs110-overview.jpg)



<table width="500" >
<tr >
<td >1
</td>
<td >Lenovo ThinkServer RS110 barebones
</td>
<td >$630
</td></tr>
<tr >
<td >4
</td>
<td >2 GB RAM 240-pin DDR2 800
</td>
<td >$70
</td></tr>
<tr >
<td >2
</td>
<td > eBay <a href="http://www.codinghorror.com/blog/archives/001200.html">drive brackets</a>
</td>
<td >$50
</td></tr>
<tr >
<td >2
</td>
<td >500 GB <a href="http://www.newegg.com/Product/Product.aspx?Item=N82E16822136143">datacenter hard drives</a>, mirrored
</td>
<td >$160
</td></tr>
<tr >
<td >1
</td>
<td >Intel Xeon X3360 2.83 GHz quad-core CPU
</td>
<td >$350
</td></tr>
</table>



Grand total of **$1,260**. Plus another 10 percent for tax, shipping, and so forth. 



The 2U database tier server is considerably beefier:



![lenovo-rd120-overview](/images/wordpress/lenovo-rd120-overview.jpg)



![lenovo-rd120-drive-bays](/images/wordpress/lenovo-rd120-drive-bays.jpg)



<table width="500" >
<tr >
<td >1
</td>
<td >Lenovo ThinkServer RD120 barebones
</td>
<td >$1,490
</td></tr>
<tr >
<td >12
</td>
<td >2 GB RAM 240-pin DDR2 667 FB-DIMM
</td>
<td >$600
</td></tr>
<tr >
<td >6
</td>
<td >eBay <a href="http://www.codinghorror.com/blog/archives/001200.html">drive brackets</a>
</td>
<td >$150
</td></tr>
<tr >
<td >6
</td>
<td >500 GB <a href="http://www.newegg.com/Product/Product.aspx?Item=N82E16822136143">datacenter hard drives</a>, RAID 10
</td>
<td >$480
</td></tr>
<tr >
<td >2
</td>
<td >Intel Xeon E5420 2.5 GHz quad-core CPU
</td>
<td >$700
</td></tr>
<tr >
<td >1
</td>
<td >aftermarket IBM heatsink for 2nd proc
</td>
<td >$90
</td></tr>
<tr >
<td >1
</td>
<td >aftermarket IBM VRM for 2nd proc
</td>
<td >$120
</td></tr>
</table>



Grand total of **$3,630**. Plus another 10 percent for tax, shipping, and so forth. 



I can sell the low-end Xeons and dinky amounts of (incorrectly sized) memory that I pulled out and replaced in every server, to defray the costs a tiny bit.



So, in a nutshell, for around **$6,000** we'll end up with the following:



<table >
<tr >
<td width="300" ><em>Web Tier</em>
</td>
<td width="300" ><em>Database Tier</em>
</td></tr>
<tr >
<td >two servers
</td>
<td >one server
</td></tr>
<tr >
<td >4 cores, 2.83 Ghz, 12 MB L2 cache
</td>
<td >8 cores, 2.5 Ghz, 24 MB L2 cache
</td></tr>
<tr >
<td >8 GB RAM
</td>
<td >24 GB RAM
</td></tr>
<tr >
<td >500 GB RAID 1 mirror array  
(hot-fail, cold-swap)
</td>
<td >500 GB RAID 10 array  
(hot-swap, up to 2 drives at once)
</td></tr>
<tr >
<td >
</td>
<td >dual redundant power supplies
</td></tr>
</table>



(I am taking to heart the comment advice I got in my [previous blog entry](http://blog.stackoverflow.com/2008/12/server-hosting-rent-vs-buy/); we'll be shipping multiple spare hard drives down to the hosting provider, and I added that second 1U server just as a backup in case anything weird happens. We technically didn't need two web tier servers, yet.)



Sure, $6,000 sounds like a lot. But if you take a typical $800 per month hosting bill for renting dedicated servers this powerful, and then cut it in half because you're no longer paying every month for servers -- we save $4,800 per year, _every single year!_ This one-time investment in server hardware pays for itself in a year and a half.



Compared to our [current two identical dedicated servers](http://blog.stackoverflow.com/2008/04/our-dedicated-server/), which aren't exactly chopped liver, this gives us:







  * 1.5x the overall speed (faster CPUs, faster memory bus, more L2 cache)

  * 2x the memory on web; _8x_ the memory on database

  * larger and faster storage with bigger drives and RAID 10 option




What this means to _you_ is a **faster Stack Overflow!** As far as I'm concerned performance is a core feature; we can never be fast enough, and I'm constantly on the lookout for ways to make pages load faster.



Having these new servers in place (hopefully sometime in early-ish February) also enables us to expand, which I'll be blogging about in more detail tomorrow.

