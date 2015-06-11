---
author: jeffatwood
comments: true
date: 2009-01-17 06:40:44+00:00
layout: post
redirect_from: /2009/01/furtheradventures-of-a-raid-noob
hero:
slug: furtheradventures-of-a-raid-noob
title: Further Adventures of a RAID Noob
wordpress_id: 453
tags:
- company
- server
---


I mentioned in the last podcast that I wasn't sure how the **two-drive RAID mirroring** was supposed to work in the [Lenovo RS110](http://www.google.com/search?q=lenovo+rs110) 1U servers [we bought](http://blog.stackoverflow.com/2009/01/new-stack-overflow-server-glamour-shots/).



![lenovo-rs110-server](/images/wordpress/lenovo-rs110-server.jpg)



This server comes with a mini-PCI RAID card as standard equipment, the [LSI 1064E](http://www.lsi.com/storage_home/products_home/standard_product_ics/sas_ics/lsisas1064e/index.html).  To set it up, I did the following:







  * Installed two [500 GB "datacenter class" drives](http://www.newegg.com/Product/Product.aspx?Item=N82E16822136143) (well, after I figured out how to [obtain the mysterious drive rails of mystery from eBay](http://www.codinghorror.com/blog/archives/001200.html), anyway).

  * entered the LSI MegaRAID BIOS by pressing CTRL+C during bootup, and built a simple mirror array.

  * booted and installed the OS, Windows Server 2008 x64 Standard.

  * Installed the [MegaRAID Storage Manager software](https://www-304.ibm.com/systems/support/supportsite.wss/docdisplay?lndocid=MIGR-5077712&brandind=5000008) for Windows (which I had a _hell_ of a time finding, thanks Lenovo)

  * after OS fully ready -- **ejected one of the mirrored drives!**




The good news is this worked fine. The system kept humming away with the one good drive it had left, which is the goal of a mirrored drive array. I've done this test with both the first and second drive; works either way. So far so good!



However, when I _reinserted_ the drive, **the system bluescreened**. Doh! That's the bad news.



I assumed this meant the system needed to rebuild the drive from the MegaRAID BIOS utilities. So I rebooted, pressed CTRL+C to enter the MegaRAID BIOS utility during the boot sequence, and began resyncing the 500 GB mirrored array. **Resyncing from the BIOS took about four hours.** After rebooting, I was up and running again, but having four hours of downtime to replace a failed drive is, uh.. pretty bad.



Well, _this_ time I decided to reboot the system as-is after the eject, ok, reinsert, doh! cycle.



The server booted the OS fine. I entered the MegaRAID manager, and lo and behold: **the array was indeed rebuilding, all on its own!** Very very slowly, but still!



![megaraid-mirror-live-rebuild](/images/wordpress/megaraid-mirror-live-rebuild.png)



I had jumped to the conclusion that live rebuilds were impossible when I inserted the new drive and it bluescreened. Looks like the _real_ restriction is that you can't hot swap a failed drive -- you must shut down, swap out the drive, and then reboot. 



Of course this kind of "live" mirror rebuild takes a heck of a lot longer -- **8 hours or more** in my testing. And during the rebuild, disk performance is pretty much in the toilet, as you'd expect. The RAID controller has to copy 500 GB of data from the good drive to the new mirror drive.. and on top of that, copy any data that changed during the copy, too. On some level it's amazing this stuff works at all.



Requiring a reboot isn't optimal for failed mirror drive replacement, but it sure beats the heck out of 4 hours of downtime!

