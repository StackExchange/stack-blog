---
author: kevinmontrose
comments: true
date: 2012-02-03 21:15:43+00:00
layout: post
redirect_from: /2012/02/stack-exchange-api-v2-0-no-longer-beta
hero: 
slug: stack-exchange-api-v2-0-no-longer-beta
title: Stack Exchange API V2.0 No Longer Beta
wordpress_id: 10936
tags:
- company
- API
---

We've spent the last month polishing V2.0 of the Stack Exchange API in a [public beta](http://blog.stackoverflow.com/2011/12/stack-exchange-api-v2-0-public-beta/), and I'm happy to announce its final release.  Kudos to those who have [reported bugs](http://stackapps.com/questions/tagged/bug+status-completed), and[ made quality suggestions](http://stackapps.com/questions/tagged/feature-request+status-completed) during the beta.

At this point the interface to V2.0 is frozen, only bug fixes and performance improvements will be deployed until the next revision.  As always, if you build on our platform we _will support you_ so V2.0 will be around as long as it sees significant use.

You'll find our revamped documentation portal at:


## [api.stackexchange.com](https://api.stackexchange.com/)




[![](https://i.stack.imgur.com/DIyT0.png)](https://api.stackexchange.com/)




Alongside the documentation for every method, you'll also find a test console for rapid experimentation.  Try out the console by finding [Jon Skeet's most recent comment](https://api.stackexchange.com/docs/comments-on-users#pagesize=1&order=desc&sort=creation&ids=22656&filter=!-q2Raa_L&site=stackoverflow&run=true).




We've also thrown together a minimalist [Javascript SDK](https://api.stackexchange.com/docs/js-lib) for consumers that just want to use the new [authentication features](https://api.stackexchange.com/docs/authentication).




Although the beta is over, the [contest continues](http://blog.stackoverflow.com/2011/12/stack-exchange-api-v2-0-public-beta/).  You have until the end of February to list any application or library on [Stack Apps](http://stackapps.com/) to be eligible, and you can continue to hunt the (now rather elusive) bugs left in the API.





## Some Neat Apps That Are Already Available


[![](https://i.stack.imgur.com/gh7jo.png)](http://stackapps.com/questions/2982/stinkingbadges-track-your-progress-towards-long-term-badges)

[StinkingBadges](http://stackapps.com/questions/2982/stinkingbadges-track-your-progress-towards-long-term-badges), created by [agent86](http://stackexchange.com/users/1026765), lets you see your progress towards some of the harder Stack Exchange badges.  It's a good example of filling a gap, rather like [StackPrinter](http://www.stackprinter.com/) from V1.0.

[![](https://i.stack.imgur.com/PDVAU.png)](http://stackapps.com/questions/2874/stack-alert-google-chrome-extension-keep-tabs-on-your-inbox-without-needing)

[Stack Alert](http://stackapps.com/questions/2874/stack-alert-google-chrome-extension-keep-tabs-on-your-inbox-without-needing), created by [George Edison](http://stackexchange.com/users/65895), takes advantage of the headlining authentication feature of V2.0 to give you access to your Stack Exchange inbox right in your browser.  While decidedly utilitarian, it is already available for [Firefox](http://stackapps.com/questions/2909/stack-alert-mozilla-firefox-add-on-keep-tabs-on-your-inbox-without-needing-t), [Opera](http://stackapps.com/questions/2948/stack-alert-opera-keep-tabs-on-your-inbox-without-needing-to-have-a-stack-ex), and [Chrome](http://stackapps.com/questions/2874/stack-alert-google-chrome-extension-keep-tabs-on-your-inbox-without-needing).


[![](https://i.stack.imgur.com/lAnbI.png)](http://stackapps.com/questions/2913/stackgeography-a-stack-exchange-question-mapping-site)




[StackGeography](http://stackapps.com/questions/2913/stackgeography-a-stack-exchange-question-mapping-site), created by [patridge](http://stackexchange.com/users/20388), plots where on the globe new questions are being asked.  Not entirely unlike our [own monitor wall](http://blog.stackoverflow.com/2011/12/the-stack-big-board/), but built on top of the public API.




While it's only half-way through the contest, I'm pretty pleased with what I've seen thus far.




**Of course, there's plenty of time left to create an application.**




If you're interested go read the [read the documentation](http://api.stackexchange.com/) and [register your application](http://stackapps.com/apps/oauth/register).
