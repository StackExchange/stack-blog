---
author: kevinmontrose
comments: true
date: 2014-02-10 21:12:34+00:00
layout: post
redirect_from: /2014/02/stack-exchange-api-v2-2-and-the-demise-of-v1-x
slug: stack-exchange-api-v2-2-and-the-demise-of-v1-x
title: Stack Exchange API V2.2 - and the demise of V1.x
wordpress_id: 14446
tags:
- company
- API
---

[![](https://cdn.sstatic.net/apiv2/img/se-gear.png)](https://api.stackexchange.com/)

There's been a lot of excitement lately here at Stack Exchange, what with the launch of our [Android app](http://blog.stackexchange.com/2014/01/stack-exchange-for-android-is-here/) and the start of our [iOS app alpha](http://meta.stackoverflow.com/questions/220264/help-us-test-the-alpha-version-of-our-ios-app). A few sharp-eyed users noticed, hidden deep within each app, a new version of the Stack Exchange API. After a few more weeks of testing I'm happy to say that **V2.2 is now frozen, [documented](http://api.stackexchange.com/docs/), and released**.


## What's[ new in this release](http://api.stackexchange.com/docs/change-log)?





	
  * Creating questions and answers

	
  * Voting

	
  * Editing, Deleting, and Flagging

	
  * Improved OAuth UI on mobile devices

	
  * …and lots more


Almost everything done by our own apps is using our public API, but there are a few notable exceptions:

	
  * We don't think the Feed is polished enough for inclusion yet

	
  * User creation is too sensitive to guarantee stability

	
  * Login methods that don't use OAuth can't be made public for security reasons


With the [third](http://blog.stackexchange.com/2012/02/stack-exchange-api-v2-0-no-longer-beta/) [release](http://blog.stackexchange.com/2012/09/stack-exchange-api-v2-1/) of the API V2.x family, we've decided to retire the V1.x family at long last. Version 1.0 of the Stack Exchange API was [released in 2010](http://blog.stackexchange.com/2010/07/stack-exchange-api-1-0-imminent/), with its last update (V1.1) [almost exactly three years ago](http://blog.stackexchange.com/2011/02/stack-exchange-api-1-1-and-improved-app-gallery/), and its ultimate [deprecation in 2012](http://stackapps.com/questions/3439/deprecating-api-v1-x). Active consumers were notified of its imminent demise earlier this year, but this is the public announcement:


## V1.0 and V1.1 of the Stack Exchange API will be shut down May 12th


I encourage anyone still using the V1.x family to use the coming months to migrate to V2.2. It's much improved.
