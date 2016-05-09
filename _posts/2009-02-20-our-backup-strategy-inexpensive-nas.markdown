---
author: jeffatwood
comments: true
date: 2009-02-20 00:51:03+00:00
layout: post
redirect_from: /2009/02/our-backup-strategy-inexpensive-nas
hero: 
slug: our-backup-strategy-inexpensive-nas
title: Our Backup Strategy - Inexpensive NAS
wordpress_id: 697
tags:
- company
- server
---


As part of our new backup strategy, I decided to invest in an inexpensive Network Attached Storage (NAS) unit -- the [QNAP TS-409U](http://www.qnap.com/pro_detail_feature.asp?p_id=103).



[![qnap 409u](https://i.stack.imgur.com/Qcpav.jpg)](http://www.amazon.com/dp/B001AXCJVE/?tag=codinghorror-20)



The TS-409U has the following specs:







  * 1u rack mountable

  * 4 SATA drive bays

  * 500 MHz embedded CPU, 8 MB flash RAM, 512 MB RAM, Linux based

  * Supports RAID 0, 1, 5, 6 with hot-plugging drives

  * Gigabit ethernet network interface w/ web UI

  * Mac, Windows, Linux filesystem support




Being Linux, you can also do [lots of other cool stuff](http://www.qnap.com/pro_features.asp) on it, like run Apache+PHP, MySQL server, FTP server, BitTorrent server, Multimedia Server (whatever the heck [Twonky](http://www.twonkymedia.com/learn.html) is), and iTunes compatible media sharing. But for our purposes, it's an inexpensive RAID-based filesystem. It's a minimalistic set of hardware, as you can see in [this Techware Labs review](http://www.techwarelabs.com/reviews/servers/qnap_ts_409u_turbo_nas/index_2.shtml):



[![ts409u-internals](https://i.stack.imgur.com/lZJZA.jpg)](http://www.techwarelabs.com/reviews/servers/qnap_ts_409u_turbo_nas/index_2.shtml)



I populated our TS-409U with four of the best price/capacity hard drives I could source. As of today, at least, the sweet spot is **640 GB drives**. Total price was $799 for the device, and $60 each for the drives, so around $1,200 total with tax and shipping. 



Our Database Ninjatm, [Brent Ozar](http://www.brentozar.com/), gave me a little flak for investing in such a low-end NAS device. It's true, for around $1,400 I could have built yet another quad-core, 2 drive mirror Lenovo RS110 server. However, I felt that having an embedded device _dedicated_ to backups -- and one with **four drive bays** that can do [better than RAID 0 or 1](http://blog.stackoverflow.com/2009/01/furtheradventures-of-a-raid-noob/) -- was the more logical choice. But I agree, it would have been nice to have another full-blown server to pinch hit for scalability or anything else. It's a grey area.



As for setting up the QNAP TS-409U, I was a little annoyed that you have to run a Windows or Mac executable for the initial setup, instead of just booting it and configuring everything through the comprehensive (and very nice) web UI. But it detected my drives and configured OK, at which point I could use the web UI for everything else: 



![ts409u-sata-config](/images/wordpress/ts409u-sata-config.png)



Seventeen (!) hours later, the array was fully synced and ready for benchmarking. [RAID 6](http://en.wikipedia.org/wiki/Standard_RAID_levels#RAID_6) is just like RAID 5, but with one more parity block, so it can **survive two drive failures instead of just one**.



[![raid-6-diagram](https://i.stack.imgur.com/8KnI3.png)](http://en.wikipedia.org/wiki/Standard_RAID_levels#RAID_6)



The downside of picking a low end NAS is speed. The relatively anemic 500 MHz embedded CPU, combined with software-only RAID and the inherent write penalty of RAID 6's dual parity calculation, means ... **well, this is not what I would call a "fast device"**. Here are some quick benchmarks I ran:



<table width="400" >
<tr >
<td colspan="2" ><strong>1 file; 6.06 GB</strong></tr>
<tr >
<td >read
<td >21.0 MB/sec</tr>
<tr >
<td >write
<td >7.62 MB/sec</tr>
<tr >
<td colspan="2" ></tr>
<tr >
<td colspan="2" ><strong>5,784 files; 1,114 folders; 355 MB</strong></tr>
<tr >
<td >read
<td >2.46 MB/sec</tr>
<tr >
<td >write
<td >1.81 MB/sec</tr>
</table>



For our intended use, storing a bunch of large single file daily database backups, blazing speed isn't particularly important. Now that we have a 1+ TB backup device on the local network, we can store a huge history of daily backups. These check in at about 5GB per day currently, with a growth rate of 50 - 100 MB per day. This also takes some write pressure off the database server, since whatever backups we take will be spooled to the NAS over ethernet.



We plan to complement our onsite daily backups with informal offsite ["sneakernet"](http://en.wikipedia.org/wiki/Sneakernet) backups. As I've mentioned before, we are fortunate to have Stack Overflow team member Geoff Dalgas live about a mile from the data center. We bought him a 500 GB 2.5" USB drive, so he can head over the data center every 2 months or so and copy some backups off to keep in the (hopefully) unlikely event something terrible happens to [our data center](http://blog.stackoverflow.com/2009/02/new-datacenter-migration/).

