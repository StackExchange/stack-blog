---
author: jeffatwood
comments: true
date: 2009-04-13 06:59:13+00:00
layout: post
redirect_from: /2009/04/stack-overflow-voting-pattern-analysis
hero: 
slug: stack-overflow-voting-pattern-analysis
title: Stack Overflow Voting Pattern Analysis
wordpress_id: 1025
tags:
- company
- community
---


Stack Overflow user [John Cook](http://stackoverflow.com/users/25188/john-d-cook) recently [wrote a blog entry analyzing Stack Overflow reputation scores](http://www.johndcook.com/blog/2009/03/02/stackoverflow-reputation-statistics/):
[![Stack Overflow reputation graph](https://i.stack.imgur.com/9u5eJ.png)](http://www.johndcook.com/blog/2009/03/02/stackoverflow-reputation-statistics/)
The reputation scores follow the expected power law distribution. No surprise there, of course. John explains:





>
This graph was based on a snapshot of the user reputations one day last week. The largest group, 15,219 users, had reputation less than 100. There were 2,494 users with reputation between 100 and 200, etc. The number of users in a 100-point reputation range generally decreases as the reputation score increases. The majority of users have reputation less than 100, and yet the top percentile have reputations over 4,800 and the highest reputation was 38,700. This sort of extreme disparity suggests a power law distribution.

> 
> 
The test for whether the reputation scores follow a power law is to plot the logarithms of the number of people with each score and look for a straight line. And after an initial steep drop off, **the logs of the counts do fall roughly on a straight line**.






This is all based on public information from Stack Overflow user profiles. Based on a request by John which was seconded by [Bill the Lizard](http://stackoverflow.com/users/1288/bill-the-lizard), I elected to provide **anonymized Stack Overflow voting data** for further analysis. The [preliminary results](http://www.johndcook.com/blog/2009/04/12/civic-duty-on-stackoverflow/) of that analysis just went up.
[![Stack Overflow reputation vs votes](https://i.stack.imgur.com/LIQGo.png)](http://www.johndcook.com/blog/2009/04/12/civic-duty-on-stackoverflow/)
John's summary:





>

> 
> 

>   1. Most users don't vote, but most users aren't invested in the site. They also have no reputation.

>   2. Most votes come from users with low reputation, just because they're the vast majority of users.

>   3. The higher someone's reputation, the more they vote. The number of votes someone is likely to cast is proportional to their reputation.


> 
> 
I think this last fact speaks well of the users on the site. The people who receive reputation points also give reputation points. The high-reputation users are not reputation-freeloaders, enjoying the praise of others. They're giving in proportion to what they receive.

> 
> 
**You could view reputation as a measure of how invested someone is in the site, not just a measure of their perceived competence.**






We've said all along that reputation was not in any way a measurement of skill -- per the [faq](http://stackoverflow.com/faq), it is a (very) rough measurement of how much the Stack Overflow community trusts you. Good to see that corroborated with actual data.



John has promised even more analysis of this data as time permits, so keep an eye on [his excellent blog](http://www.johndcook.com/blog) for more!

