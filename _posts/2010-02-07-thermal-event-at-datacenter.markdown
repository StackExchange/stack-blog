---
author: jeffatwood
comments: true
date: 2010-02-07 11:47:36+00:00
layout: post
redirect_from: /2010/02/thermal-event-at-datacenter
slug: thermal-event-at-datacenter
title: Thermal Event at Datacenter
wordpress_id: 2706
tags:
- company
- server
---


Our hosting provider, PEAK, let us know that they had a cooling compressor fail in the facility.



The primary database server was apparently taken offline at 2:53 AM Pacific Time by this thermal event.



The backup database server is still online and has the most recent (12 AM) backups restored to it; we're currently just waiting to hear if db1 is rebootable/alive before bringing db2 online.



db1 came back OK, and we're resuming site service now at 3:57 AM.



Checking the logs, db1 apparently shut down from heat at 2:44 AM:





<blockquote>
The previous system shutdown at 2:44:21 AM on 2/7/2010 was unexpected.
</blockquote>





I suspect db1 shut down because it's on top of the rack (highest = more heat) and it is the _only_ server using the High Performance power plan -- which operates all CPUs at 100% speed all the time -- instead of the default Balanced power plan which allows the CPUs to reduce speed and consume less power when they are lightly loaded.



We'll be following up with PEAK to figure out why this wasn't handled before temperatures became dangerously high.



Obligatory video link.







Geoff went down to the datacenter, and he confirmed it really was quite hot down there -- doors were open, fans were placed blowing air in, etc.



Update: PEAK official statement





>
The PEAK HVAC system consist of two cooling systems which both operate to provide cooling to the pressurized floor of data center. One system is a 5-ton and the second is a 10-ton unit.

> 
> 
At around 2:30am on Sunday morning (2/7) the PEAK Data Center experienced a failure of one of our air conditioning units on the roof. Our monitoring systems notified the PEAK support center when the AIR temperature exceeded   80 degrees F.  At some point we measured temps of 83+ degrees F in the Data Center.

> 
> 
Engineers arrived on-site around 3:00am and deployed portable fans to exhaust warm air.  This brought down the air temperature in the Data Center  to under 80 degrees.

> 
> 
Our HVAC vendor was dispatched and arrived on-site by 4:00am.  The vendor located a failed heat exchanger fan motor in their in-stock inventory and performed an emergency replacement.  By 7:00am the HVAC system was operating with the repaired equipment.  At 7:30 4lbs of coolant was added to the system.  By 9:00am, the temperature in the Data Center returned to normal levels.

> 
> 
PEAK Engineers are looking into why this failure caused a significant rise in the Data Center temperature.  Based on our findings, PEAK will take the necessary actions to ensure a failure of  one systems does not cause a significant change in the Data Center temperature.  We will provide this information once it becomes available.






Scary how fast temperatures rose!

