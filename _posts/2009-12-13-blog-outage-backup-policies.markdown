---
author: jeffatwood
comments: true
date: 2009-12-13 02:10:00+00:00
layout: post
redirect_from: /2009/12/blog-outage-backup-policies
hero: 
slug: blog-outage-backup-policies
title: Blog Outage - Backup Policies
wordpress_id: 2279
tags:
- company
- background
- server
---


On Friday, the server which hosts this blog suffered catastrophic data loss. Fortunately, the blog server is at **a different datacenter entirely** than [PEAK, which hosts all the Trilogy sites](http://blog.stackoverflow.com/2009/02/new-datacenter-migration/).



It's a long story, and I'll document it in more detail elsewhere, but the short version is this:







  * This particular host's (again, _not_ PEAK)  backup processes were fatally flawed, as they were unable to backup a live virtual machine hard drive file. So the "backups" they had were nonexistent, because the backup process was failing on the most important server files every single night.

  * We belatedly realized we should never have trusted the host with backups in the first place -- we should have been backing up the relevant bits of content in the virtual machine ourselves, instead of assuming the host's backups were working.

  * The blog was not a high priority for backup since it was a) on a singleton server in a completely different data center and b) it's not an actual trilogy site, but a "helper" site.




Anyway, we were able to piece together a backup from different sources, and I took this opportunity to move the blog from WordPress on Windows (which has been _incredibly_ quirky) to WordPress on Linux.



You may be wondering how this incident relates to our **Stack Overflow disaster recovery plan**. 



![our-disaster-recovery-plan](/images/wordpress/our-disaster-recovery-plan.png)



Mostly, it doesn't. I just never viewed the blog as part of our core mission (though I probably should have) and subsequently didn't give it the attention it deserved. We've since moved the blog to an actual PEAK "family" server in our rack, so it'll get folded in with our standard backup process.



So what is our standard backup process?







  1. We take full database backups of all databases at 4 AM, 4 PM, and 12 AM. (some databases are backed up more aggressively, but this is typical.) These full database backups are stored on [our NAS RAID-6 device](http://blog.stackoverflow.com/2009/02/our-backup-strategy-inexpensive-nas/) on the rack at the PEAK datacenter.

  2. We have a 500 GB USB hard drive attached to the database server. There is a C# script which copies the latest backups from the NAS to the USB hard drive every night at around 1 AM. The oldest files are deleted to make room for the new files as necessary. (The current Stack Overflow full backup is about 7 GB compressed, and the other databases are perhaps 2 GB compressed.) new: we'll have two USB hard drives connected and do identical copies in parallel in case one of the drives develops problems.

  3. One of our team members, [Geoff Dalgas](http://blog.stackoverflow.com/2009/05/welcome-stack-overflow-valued-associate-00003/), lives a mile from the PEAK data center. He drops by and physically swaps out the USB hard drive every few weeks. He holds onefour 500 GB USB drives at his home, while the other two are at the data center. They continually get cycled back and forth over time.

  4. new: Fog Creek will FTP in and transfer the most current database backups to their hosting facility every week, during low traffic periods on Saturday.

  5. We do [Creative Commons data dumps](http://blog.stackoverflow.com/category/cc-wiki-dump/) of all sites (Stack Overflow, Server Fault, Super User) every month. This is a subset of the data, but a sizable one, and it's available on [Legal Torrents](http://www.legaltorrents.com/creators/146-stack-overflow-data-dump). These data dumps are physically hosted on and seeded by Legal Torrents.

  6. Our Subversion source control repository is copied to the NAS every day and also gets copied to the USB external drive, etc, through the same script.

  7. We also run a few VM images -- for Linux helper services, mostly -- and they are backed up through the same process. As our other host learned the hard way, backing up live VMs can be tricky, so this is _definitely_ something you need to be careful about.

  8. We regularly download the latest database backups and restore them locally (we develop against live data all the time), so we know our backups work.




This was originally documented in a private email, but I believe in [maximizing the value of my keystrokes](http://www.codinghorror.com/blog/archives/000854.html), so I made it public. We try to be transparent in everything we do; hopefully this eases any lingering concerns over the blog outage.

