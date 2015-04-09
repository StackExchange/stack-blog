---
author: jeffatwood
comments: true
date: 2009-04-30 18:35:12+00:00
layout: post
redirect_from: /2009/04/googles-openids-are-unique-per-domain
slug: googles-openids-are-unique-per-domain
title: Google's OpenIDs are Unique Per-Domain
wordpress_id: 1192
tags:
- company
- Beta
- serverfault.com
---


If you've been trying to log in to [the serverfault.com private beta](http://blog.stackoverflow.com/2009/04/server-fault-private-beta-begins/) and haven't been able to, here's probably why:







  1. You use Google's (otherwise excellent) OpenID support on Stack Overflow.

  2. As we just discovered, Google's OpenIDs are unique per-domain.

  3. Thus, the OpenID string key "fingerprint" that we use to identify you on **Stack Overflow** is not the same as the OpenID string key that Google returns for **Server Fault**.




Until we come up with a better workaround, what we recommend is adding an alternate Stack Overflow OpenID from [myopenid](http://www.myopenid.com/) or another service where the OpenID URL is stable. For example, one of my OpenID accounts is **codinghorror.myopenid.com** which works fine in both places.



It's easy to [add an alternate OpenID](http://blog.stackoverflow.com/2009/01/we-now-support-multiple-openids/), just make sure you're logged into your Stack Overflow account, first, then [click the "New Login" link as described here](http://blog.stackoverflow.com/2009/01/we-now-support-multiple-openids/).



(this strange behavior is [documented by Google](http://groups.google.com/group/google-federated-login-api/web/the-most-important-technical-issue-in-using-the-google-accounts-api?pli=1) as well.)

