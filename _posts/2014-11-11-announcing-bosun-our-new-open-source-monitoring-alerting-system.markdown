---
author: david
comments: true
date: 2014-11-11 15:53:53+00:00
layout: post
hero: https://i.stack.imgur.com/kM2mK.jpg
redirect_from: /2014/11/announcing-bosun-our-new-open-source-monitoring-alerting-system
slug: announcing-bosun-our-new-open-source-monitoring-alerting-system
title: Announcing Bosun, our new open source monitoring & alerting system
wordpress_id: 14872
tags:
- company
- engineering
- announcement
- community
- sysadmin
---

> If trees could scream, would we be so cavalier about cutting them down?
> We might, if they screamed all the time, for no good reason.  
> - [Deep Thoughts, by Jack Handey](http://en.wikiquote.org/wiki/Jack_Handey)





A big part of scaling up an engineering team is getting serious about monitoring and alerts. A good monitoring system collects data from all of your various systems -- for example, how fast pages are loading, or server CPU usage, or emails being sent -- and alerts you when something isn't working correctly. When everything works perfectly you can sleep easy at night knowing that you'll get an alert if something isn't working correctly.





That's the theory, anyway. About a year ago we realized that our monitoring system needed some serious upgrading. Instead of proactively alerting us before something broke, it mostly alerted us that something was already down. When we did get an alert it wasn't obvious what exactly was breaking or who needed to fix it. If you're a developer or sysadmin this email inbox probably looks a bit familiar:



![alert hell](https://i.stack.imgur.com/oR3cl.png)



So we set out to fix it. We weren't happy with any of the tools available so we decided to build our own. Since we are big fans of giving back to the community, we decided to make it open source as well.





The new system is called [Bosun](http://bosun.org/) (because [naming is hard](http://blog.stackoverflow.com/2009/03/it-stack-overflow-update-naming-is-hard/)) and was developed by our own [Kyle Brandt](http://serverfault.com/users/2561/kyle-brandt) and [Matt Jibson](http://stackoverflow.com/users/864236/mjibson). It's still very much in development but we've been using it internally for a few months and are really happy with the results. We can measure much more intelligently and build complex alerts based on those metrics. Some of the things it makes easy are:






	
  * Push data into Bosun from anywhere via a simple JSON api, or use [scollector](http://bosun.org/scollector/) to collect common metrics from lots of different systems

	
  * Test alerts against older data and see when they _would_ have gone off

	
  * Reduce email clutter with scope-aware alerts, so when e.g. redis goes down we get one email, not twelve (one for each instance)

	
  * Forecast and alert against _future_ data, like when we’re about to run out of disk space





If you're interested, read the full announcement (with a lot more detail) on the [Server Fault blog](http://blog.serverfault.com/2014/11/10/announcing-bosun/) or go straight to [bosun.org](http://bosun.org/) to check it out. There's a link on the [Getting Started page](http://bosun.org/gettingstarted.html) to a Docker image that populates itself with some data for you to experiment with. And if you happen to be at LISA this week you can check out [Kyle Brandt’s talk](https://www.usenix.org/conference/lisa14/conference-program/presentation/brandt) on Thursday.




As with any open source project, we're looking for a few brave souls to join us. You can grab [the source on GitHub](https://github.com/bosun-monitor/bosun) and start submitting issues and pull requests today.
