---
author: jeffatwood
comments: true
date: 2009-03-21 11:00:09+00:00
layout: post
redirect_from: /2009/03/more-voting-anomalies
hero: 
slug: more-voting-anomalies
title: More Voting Anomalies
wordpress_id: 897
tags:
- company
- community
- design
---


In December we began [tracking and removing anomalous voting patterns](http://blog.stackoverflow.com/2008/12/vote-fraud-and-you/). This happens automatically as part of a daily script, and it's worked well to date, nullifying the most egregious upvoting and downvoting anomalies.



I've been getting a few reports of further voting issues via the email link provided at the bottom of every Stack Overflow page. We take any reports of exploits or problems on Stack Overflow very seriously, and they're all investigated. In particular, **we will not tolerate gaming our vote system**.



![examining-vote-chad](/images/wordpress/examining-vote-chad.jpg)



Based on additional analysis of the voting data and user data, we've refined our detection of voting anomalies even further. I have to be coy (again) about exactly how we do this because I don't want users optimizing around the various checks we do. But, in a nutshell:







  1. **We can automatically detect [sockpuppet accounts](http://en.wikipedia.org/wiki/Sockpuppet_(Internet)) now**. Sockpuppets used for the purpose of upvoting or downvoting will be deleted, and their votes -- cancelled.

  2. **We now perform a more detailed statistical analysis on voting patterns**. Any voting patterns that are too far outside the statistical norm will be nullified.




If you see a reputation drop today, it's likely because our new, improved daily vote anomaly check found something that should be removed. And if you own a sockpuppet account, you may find it no longer exists. That said, we believe in discouraging _behaviors_ rather than the user. Nobody will be banned or penalized. Just refrain from engaging in these behaviors unless you want them undone every day, like clockwork.



The bottom line is this: **it will always be easier to earn reputation legitimately -- by asking good questions and providing great answers -- than by gaming the system**.

