---
author: jeffatwood
comments: true
date: 2009-01-25 16:18:24+00:00
layout: post
redirect_from: /2009/01/new-stack-overflow-servers-ready
hero: https://i.stack.imgur.com/HPNwv.jpg
slug: new-stack-overflow-servers-ready
title: New Stack Overflow Servers Ready
wordpress_id: 493
tags:
- company
- server
---


After many trials and tribulations, the [new Stack Overflow servers](http://blog.stackoverflow.com/2009/01/new-stack-overflow-server-glamour-shots/) are now ready to ship.



[![stackoverflow-servers-shipping-ready](https://i.stack.imgur.com/HPNwv.jpg)](http://blog.stackoverflow.com/2009/01/new-stack-overflow-server-glamour-shots/)



Ladies and gentlemen, meet the newest members of the stackoverflow.com hardware family: SOWEB1, SOWEB2, and SODB1. That's right, I even labelled them with my black and silver sharpies.



It's been an awfully long month and a half since I originally asked [whether we should rent servers or buy them](http://blog.stackoverflow.com/2008/12/server-hosting-rent-vs-buy/). I've finished burn-in testing on all three servers and I am totally confident (barring any shipping disasters) they'll arrive at our hosting provider ready to slide into a rack and "just work". The benefit to you is that we **make stackoverflow.com even speedier than it already is, and _far_ more scalable**.



I learned quite a bit in building up these servers, and I certainly paid my dues in the process. So you'll forgive me if I took the liberty of personalizing our servers a little bit. 



[![stackoverflow-lenovo-rd120-shipping-ready](https://i.stack.imgur.com/XUDpc.jpg)](http://blog.stackoverflow.com/2009/01/new-stack-overflow-server-glamour-shots/)



That's right, I build my servers with an extra-special ingredient: **love**. And [if loving these computers is wrong, I don't wanna be right](http://www.codinghorror.com/blog/archives/000761.html).



I guess I was inspired by [the old Amiga A1000 I used to own](http://en.wikipedia.org/wiki/Amiga_1000), which had the signatures of the designers molded into the underside of the case.



[![amiga-a1000-signatures](/images/wordpress/amiga-a1000-signatures.jpg)](/images/wordpress/amiga-a1000-signatures-large.jpg)



Of course I'm just a schmuck who assembled some parts, and these guys were actual hardware design gurus far ahead of their time, but you know what I mean.



In particular, I have to emphasize two things I learned. If you're building up servers, **make sure you do these two things as soon as they arrive:**







  1. Update the BIOS and RAID firmware to the latest possible versions.

  2. Make sure you have the latest operating system drivers.




I'm no stranger to BIOS updates and firmware flashes for my desktops and consumer hardware, but I was hesitant to mess with the firmware on a server. I figured if it ain't broke, don't fix it, that sort of thing. Well, I was wrong.



The RD120 server demanded a BIOS flash as soon as I installed the slightly newer CPUs I ordered for it. No problem; that's fairly typical for newer CPUs. Done and done.



What was much more unusual, however, was the way **RAID port #6 refused to operate on the server**. RAID ports #1 through #5 worked like a champ, but not #6. I ordered a grand total of 12 hard drives (6 + 2 + 2 + 2 spares), and I tried three of them in that port, to no avail. It would see the drive, then reject it within a few minutes. I figured this had to be a hardware problem so I called Lenovo. They dispatched a very friendly tech the next day who came out and replaced the RAID backplane. Unfortunately, this didn't fix the problem! After he troubleshot it for a bit, I got a lecture about using "non-Lenovo" industry standard SATA hard drives in a server. I actually have two official Lenovo 160 GB drives here, but he wouldn't use those either as they're not on the parts list for the RD120, somehow. I insisted, and we inserted the drive. To my amazement, this worked. I hadn't even considered putting in a different _brand_ of drive. I thanked the tech, and after he left I tried another random SATA drive I have here. It too worked!



(As an aside, I had a rip of a time finding the Windows app that shows you the status of / lets you control the RAID arrays, but I eventually dug it up -- the [IBM ServeRAID application](http://www-947.ibm.com/systems/support/supportsite.wss/docdisplay?lndocid=MIGR-61707&brandind=5000008). Thanks for nothing, Lenovo!)



At this point I belatedly realized what my problem was. As soon as I got the RAID controller updated with the latest firmware, all my problems magically went away -- RAID port #6 started working perfectly with the original drives. I would have done this earlier, but Lenovo's update download didn't work for me, so I had to call support to get a pointer to the [IBM ServeRAID 8k series bootable ISO update](http://www-947.ibm.com/systems/support/supportsite.wss/docdisplay?brandind=5000008&lndocid=MIGR-5073646), which _did_ work. (By the way, have you ever read anything scarier than [RAID controller bugfix change histories?](ftp://ftp.software.ibm.com/systems/support/system_x/ibm_fw_aacraid_5.2.0-15421_anyos_32-64.chg) brrr. The latest patch was January 9th!) There were still some performance oddities until I updated the default (apparently very out of date) Windows Server 2008 driver to a newer version I downloaded from Lenovo's website.



The moral of this story? See above. **Update the damn firmware and OS drivers to the very latest versions as soon as you get the servers, not weeks later!** You'll save yourself (and your vendor) a lot of hassle.



I've done a fair bit of burn-in testing on all the servers, typical stuff like multiple instances of Prime95. but I paid special attention to the RD120 as it will be our database server. Brent Ozar, our [friendly neighborhood DBA ninja](http://www.brentozar.com/), recommended I configure the six-drive array thusly:







  * Two drive RAID 1 mirror -- Operating System, SQL Server 2008, and Logfiles

  * Four drive RAID 10 array -- Database files




![so-db-config-serveraid-manager](/images/wordpress/so-db-config-serveraid-manager.png)



I made it so, and I ran [some tests with SQLIO](http://blogs.mssqltips.com/blogs/chadboyd/archive/2008/03/16/ssd-and-sql-sqlio-performance.aspx) to verify that the data file array had good performance characteristics. I created a 24 GB test file on the array, and used this syntax:




    
    
    sqlio -k{R/W} -t8 -s120 -d{drive} -o16 -f{random/sequential} 
          -b{kilobytes} -BH -LS Testfile.dat
    





That means 8 threads, for 120 seconds, hardware buffering only, 16 outstanding I/O operations per thread.



<table cellpadding="2" width="450" cellspacing="2" >
<tr >
<td >1kb sequential writes
<td align="right" >19.18 mb/sec
<td align="right" >6ms</tr>
<tr >
<td >8kb random reads
<td align="right" >26.90 mb/sec
<td align="right" >36ms</tr>
<tr >
<td >8kb random writes
<td align="right" >64.65 mb/sec
<td align="right" >15ms</tr>
<tr >
<td >64kb sequential reads
<td align="right" >344.77 mb/sec
<td align="right" >22ms</tr>
<tr >
<td >64kb sequential writes
<td align="right" >359.32 mb/sec
<td align="right" >21ms</tr>
<tr >
<td >128kb sequential reads
<td align="right" >395.40 mb/sec
<td align="right" >39ms</tr>
<tr >
<td >128kb sequential writes
<td align="right" >413.90 mb/sec
<td align="right" >38ms</tr>
<tr >
<td >256kb sequential reads
<td align="right" >464.85 mb/sec
<td align="right" >68ms</tr>
<tr >
<td >1mb sequential reads
<td align="right" >458.50 mb/sec
<td align="right" >278ms</tr>
</table>



This compares _very_ favorably with the extremely expensive SAN configuration [Chad tested](http://blogs.mssqltips.com/blogs/chadboyd/archive/2008/03/16/ssd-and-sql-sqlio-performance.aspx) (it's labelled Server #2 in his charts). **Behold the power of inexpensive SATA drives in a directly connected RAID 10 array!** It would have been even faster if had we gone with a six drive array, but we felt that the OS needed to be on a separate set of spindles.



I also did a quick run of [SQLIOSim](http://support.microsoft.com/kb/231619), which completed fine but produced a few warnings about long IO requests -- but [apparently that's to be expected](http://www.sqlteam.com/forums/topic.asp?TOPIC_ID=83710).





<blockquote><strong>SQLIOSim will generate sufficient IO requests to overwhelm almost any disk subsystem.</strong> The long IO message from the simulator are normal. Although this does tell you that at some point the disks won't keep up.</blockquote>






As Joel pointed out on the last podcast, me personally building up these servers makes zero business sense if you factor in the cost of my time. But I've also learned a ton about these servers and the server industry in general in the process. Stuff I feel like I need to know to operate these servers responsibly while they live at a remote data center. To me, that's worth it -- I feel like I've paid myself to learn.



So here's to you, SOWEB1, SOWEB2, and SODB1. Long may you run, you _magnificent bastards_.

