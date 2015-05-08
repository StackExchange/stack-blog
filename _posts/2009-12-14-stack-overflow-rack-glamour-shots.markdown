---
author: jeffatwood
comments: true
date: 2009-12-14 06:14:23+00:00
layout: post
redirect_from: /2009/12/stack-overflow-rack-glamour-shots
hero: /images/wordpress/stack-overflow-server-rack-front-small.jpg
slug: stack-overflow-rack-glamour-shots
title: Stack Overflow Rack Glamour Shots
wordpress_id: 2303
tags:
- company
- background
- server
---


We installed our [secondary (backup) database server](http://blog.stackoverflow.com/2009/12/database-server-upgrade-outage-today/) tonight. Geoff took the opportunity to snap a few **glamour shots of the Stack Overflow server rack** at our host [PEAK Internet](http://www.peakinternet.com/business/hosting/colocation-dedicated#).



I present them here for your unbridled enjoyment and pleasure:



![stack-overflow-server-rack-front-small](/images/wordpress/stack-overflow-server-rack-front-small.jpg)



![stack-overflow-server-rack-front-small](/images/wordpress/stack-overflow-server-rack-back-small.jpg)



update: Based on feedback from this post, we [went back and improved our rack hygiene](http://blog.stackoverflow.com/2009/12/scheduled-site-maintenance-saturday/):



![](/images/wordpress/stack-overflow-server-rack-back-small-improved-v2.jpg)



These are primarily [Lenovo RS110](http://www.google.com/search?q=lenovo+rs110) and [Lenovo RD120](http://www.google.com/search?q=lenovo+rd120) servers, with a few other rackable items in the mix:




  * 1U web servers (5)  

2.83 Ghz quad core, 8 GB RAM, 2 drive RAID 1

  * Primary 2U database server  

3.33 Ghz quad core x 2, 48 GB RAM, 6 drive RAID 10

  * Backup 2U database server  

2.5 Ghz quad core x 2, 24 GB RAM, 6 drive RAID 10

  * [QNAP TS-409U](http://blog.stackoverflow.com/2009/02/our-backup-strategy-inexpensive-nas/) network attached storage device  

500 Mhz CPU, embedded Linux, hot-plug 4 drive RAID 6

  * [Netgear GS108T](http://www.netgear.com/Products/Switches/AdvancedSmartSwitches/GS108T.aspx) smart switch (2)  

8 ports, gigabit, managed SNMP, web interface

  * [Netgear GS724Tv3](http://www.netgear.com/Products/Switches/SmartSwitches/GS724T.aspx) ProSafe switch  

24 ports, gigabit, managed SNMP, web interface

  * Tripp-Lite RS-1215-20 12 outlet power strip  

seriously? it's a friggin' power strip. [Oh fine](http://www.tripplite.com/en/products/model.cfm?txtModelID=202).




Note that the primary database server is shared across all sites; only _two_ of the web tier servers currently serve Stack Overflow. We have quite a bit of extra capacity in the rack.



If you'd like to see more, _you dirty hardware perv_, you can peruse a more detailed breakdown of the internals of the servers in [Stack Overflow Server Glamour Shots](http://blog.stackoverflow.com/2009/01/new-stack-overflow-server-glamour-shots/).

