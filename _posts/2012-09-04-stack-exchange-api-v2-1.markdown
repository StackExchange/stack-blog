---
author: kevinmontrose
comments: true
date: 2012-09-04 21:37:22+00:00
layout: post
redirect_from: /2012/09/stack-exchange-api-v2-1
hero: 
slug: stack-exchange-api-v2-1
title: Stack Exchange API V2.1
wordpress_id: 12190
tags:
- company
- API
---

There's been a low-key beta of the latest Stack Exchange API revision, V2.1, under way for the last month or so.  I'm happy to announce that it's official, API V2.1 is public, frozen, and out the door.

What's [new in this release](https://api.stackexchange.com/docs/change-log)?



	
  * Full Reputation History

	
  * Notifications Tab

	
  * Improved Search

	
  * User Merge history


Oh, and our first set of [**write methods**](https://api.stackexchange.com/docs/write).


## It's now possible to create, edit, and delete comments via the Stack Exchange API


We're starting small, with the least important of our content, to safeguard the quality of our content.

Comments created with the API show which app created them when you hover over them, like so:

[![](https://i.stack.imgur.com/hqwzg.png)](http://blog.stackoverflow.com/2012/09/stack-exchange-api-v2-1/comment/)

The link shown will take you to an app's Stack Apps post, letting you find new apps right from your favorite sites (as well as report malicious ones easily).

The following restrictions apply to the write comment methods:



	
  * Your app must have an undeleted Stack Apps post

	
  * Your app_ _must be authorized by a user to perform write operations

	
  * The authenticated user must have the [comment everywhere](http://stackoverflow.com/privileges/comment) privilege

	
  * A user's daily quota of write operations increases with reputation

	
    * Quotas are discovered through the [write-permission](https://api.stackexchange.com/docs/me-write-permissions) methods





So head on over to the documentation and


# [Get Started](https://api.stackexchange.com/docs)
