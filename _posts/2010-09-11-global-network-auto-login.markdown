---
author: jeffatwood
comments: true
date: 2010-09-11 02:21:25+00:00
layout: post
redirect_from: /2010/09/global-network-auto-login
hero: 
slug: global-network-auto-login
title: Global Network Auto-Login
wordpress_id: 5075
tags:
- company
- community
- design
- serverfault.com
- stackexchange
- superuser.com
---

We now support automatically logging in to any site in the [Stack Exchange network](http://stackexchange.com/sites).

By that I mean, as long as ...





  1. You have recently logged in to _any_ [Stack Exchange network site](http://stackexchange.com/sites)

  2. You **hold an existing account** on the target site you're navigating to

  3. You are using the **same OpenID** credentials


... the site you're navigating to will **automagically log you in!** You'll see a notification bar at the top to let you know when you've automatically logged into a site.

![](/images/wordpress/global-auth-in-action.png)

(We just forced every registered account in the entire network to log off and log back in to ensure that everyone has logged in under this new regime -- so everyone should meet criteria #1 by definition.)

Global logins are tricky for us because we need **cross-domain identity**. That is, each of the following sites should, somehow, just magically _know_ who you are:





  * stackoverflow.com

  * serverfault.com

  * superuser.com

  * stackexchange.com


(not to mention that _all_ current [Stack Exchange 2.0 sites](http://stackexchange.com/sites) will eventually have custom domain names of their own choosing.)

While subdomains such as `chat.serverfault` and `meta.serverfault` are easy if you store your cookies the right way, getting access to cookies at different domains is, to put it charitably, _a friggin' nightmare_. The whole third party cookie story -- that is, reading or writing cookies stored at a domain _other_ than the one you're currently on -- is irreversibly screwed up, and getting [worse with every new browser release](http://squeeville.com/2010/02/03/third-party-cookies-in-safari-internet-explorer/), thanks mostly to unscrupulous ad networks.

So, we gave up on using third-party cookies. Instead, we use [HTML 5 Local Storage](http://diveintohtml5.org/storage.html) for global authentication, at our centralized domain [stackauth.com](http://stackauth.com). Now, this does require a modern browser, though not unreasonably so: IE8+, Chrome, Safari, FireFox 3.6+, and Opera 10.61+ are all supported.

Kevin has labored mightily to get all this working, and we've been silently running beta revisions of global auth across the network for the last two or three weeks as we work out the kinks and test. We now think it's (mostly) ready for prime time.

As with all things technically complex, there are some caveats. Global auth should work fine in the typical case -- and even if global auth is completely down, it can _never_ prevent you from logging into a site the traditional way. But please be advised that we may not be able to automatically log in you in, if ...





  * You've been to the target site recently _without_ a global auth session (click the "login" link at the top of every page to force it)

  * You're using some sort of anonymizer that interferes with [HTTP Referrer](http://en.wikipedia.org/wiki/HTTP_referrer)

  * You aren't using the same OpenId across all sites

  * You're visiting a [per-site meta](http://blog.stackoverflow.com/2010/07/new-per-site-metas/) without first logging into the parent (child metas don't use global auth; they rely on identity coming from the parent site.)


(And if you're looking for excruciating technical detail on how this all works, Kevin has [documented that here on meta](http://meta.stackoverflow.com/questions/64260/how-does-sos-new-auto-login-feature-work/64274#64274).)

If you have issues with global auth and need to troubleshoot, I suggest starting by **forcing a global logout** -- you can do this by clicking "log out", then clicking the big "log out everywhere" button.

![](/images/wordpress/log-out-everywhere-button.png)

Bear in mind that you must hold accounts on the sites  -- global authentication will not automatically create accounts for you (with the lone exception of http://stackexchange.com itself). That said, as long as you're logged into one account in our network, you should now be automatically logged into _all_ your accounts.
