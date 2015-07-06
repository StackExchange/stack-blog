---
author: jeffatwood
comments: true
date: 2008-10-23 06:59:06+00:00
layout: post
redirect_from: /2008/10/stack-overflow-openid-case-study
slug: stack-overflow-openid-case-study
hero: https://cloud.githubusercontent.com/assets/12239801/7544640/c58a3746-f59c-11e4-965e-45d8cc707d4c.jpg
title: Stack Overflow OpenID Case Study
wordpress_id: 137
tags:
- company
- design
---


[JanRain](http://www.janrain.com), an early supporter of [OpenID](http://en.wikipedia.org/wiki/OpenID), just posted **[an OpenID case study featuring Stack Overflow](http://www.janrain.com/openid/casestudy-stackoverflow)**.





>
Stack Overflow, much like Wikipedia, lets anyone edit anything – but unlike Wikipedia, we require users to earn a certain number of votes from other users before the system trusts them (we call this "reputation"). The concept of identity and logins is an essential part of how our site works.

> 
> 
As programmers ourselves, we appreciate how challenging it is not only to write an entire authentication system, but to support one.  One small mistake and you could expose users' credentials and possibly even passwords!

> 
> 
With OpenID, we didn't have to write any login code, nor do we have to store user passwords. And not only that, but we are no longer asking users to create yet another account on yet another website. Clearly a win-win scenario from our perspective.

> 
> 
We were encouraged to use OpenID because our audience is fairly technical, and OpenID is quite common among technical bloggers and frequent blog participants, our early adopters. Also, there's a rich ecosystem of third party OpenID providers, not to mention Yahoo, AOL, Google, Sun, and soon MySpace.






[JanRain runs myOpenID](http://www.janrain.com/products/myopenid), one of the better independent OpenID providers. I don't want to mention any names, but some OpenId providers, like one in particular whose name ends in _oo_, are .. not so great. That's the blessing and curse of choice: when there are dozens to choose from, some will be better than others.



That said, we continue to look at ways to improve the Stack Overflow login experience. A few things in the works on the OpenID front:







  * [Offer OpenID registration directly through stackoverflow](http://stackoverflow.uservoice.com/pages/general/suggestions/34450)

  * [allow multiple OpenIDs per account](http://stackoverflow.uservoice.com/pages/general/suggestions/24709)

  * [Allow changing the associated OpenID](http://stackoverflow.uservoice.com/pages/general/suggestions/16685)


