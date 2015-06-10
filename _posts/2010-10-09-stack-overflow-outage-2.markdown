---
author: kyle
comments: true
date: 2010-10-09 13:26:22+00:00
layout: post
redirect_from: /2010/10/stack-overflow-outage-2
hero: 
slug: stack-overflow-outage-2
title: Stack Overflow Outage
wordpress_id: 5509
tags:
- company
- server
---

As you may have noticed many of Stack Overflow's websites suffered some down time today from 6am EDT for about an hour and Stackoverflow.com is still offline ![](/images/wordpress/ups12.jpg)for maintenance. Our collocation provider in Oregon experienced an unexpected UPS failure that caused us to lose power. Once they were able to restore power Geoff, who was already on site, brought up our servers. Stack Overflow itself is still offline because the database, was, well "suspect" according to SQL Server. We have recovered the database and are working to bring it live again.

 We apologize for this outage but we are working hard to make sure you can always get your answers. We will keep everyone updated.

**Update:**
We have managed to restore the database and stackoverflow.com is now live again as of 10:45 AM Eastern. 

**Update:**
We have managed to restore the missing 4 hour window of Stack Overflow data as of 1:30 PM Eastern. 


Going forward we have [set up new servers in a new facility in New York](http://blog.serverfault.com/post/1097492931/designing-for-scalability-of-management-and-fault). We have already moved some of our sites; you may have noticed meta.stackoverflow.com was still up during this outage. This new data center includes the following improvements so that our sites will have higher availability so you can always get answers to your questions:




	
  * Two Power feeds from independent UPSes.

	
  * Redundant Internet feeds as well as redundant routers and switches.

	
  * Every site is run from multiple servers.



Thank you everyone for your patience and support during this outage. 
