---
author: jeffatwood
comments: true
date: 2009-07-10 04:17:09+00:00
layout: post
redirect_from: /2009/07/this-just-in-stack-overflow-defeats-google
slug: this-just-in-stack-overflow-defeats-google
title: 'This Just In: Stack Overflow Defeats Google'
wordpress_id: 1633
tags:
- company
- background
---


We knew in our hearts this day would come: _Stack Overflow has defeated Google!_





>
On July 2, from 6:45 AM PDT until 12:35 PM PDT, Google App Engine (App Engine) experienced an outage that ranged from partial to complete.

> 
> 
Following is a timeline of events, an analysis of the technology and process failures, and a set of steps the team is committed to taking to prevent such an outage from happening again. The App Engine outage was due to complete unavailability of the datacenter's persistence layer, GFS, for approximately three hours. 

> 
> 
The GFS failure was abrupt for reasons described below, and as a consequence the data belonging to App Engine applications remained resident on GFS servers and was unreachable during this period. Since needed application data was completely unreachable for a longer than expected time period, we could not follow the usual procedure of serving of App Engine applications from an alternate datacenter, because doing so would have resulted in inconsistent or unavailable data for applications. 

> 
> 
The root cause of the outage was a bug in the GFS Master server caused by another client in the datacenter sending it an improperly formed filehandle which had not been safely sanitized on the server side, and **thus caused a stack overflow on the Master when processed.** 





This is excerpted from [a newsgroup posting by App Engine PM Chris Beckmann](http://groups.google.com/group/google-appengine/msg/ba95ded980c8c179), and was forwarded along to me by [Lenny Rachitsky](http://www.transparentuptime.com/).



In other, less amusing news, there will be **no podcast this week**. But don't fret -- next week, we will have [the ineffable Miguel de Icaza](http://en.wikipedia.org/wiki/Miguel_de_Icaza) of Mono fame. Joel and I are both big fans, so this one should be fun.

