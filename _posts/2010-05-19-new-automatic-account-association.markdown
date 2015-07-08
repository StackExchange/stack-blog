---
author: jeffatwood
comments: true
date: 2010-05-19 10:39:52+00:00
layout: post
redirect_from: /2010/05/new-automatic-account-association
hero:
slug: new-automatic-account-association
title: New Automatic Account Association
wordpress_id: 3236
tags:
- company
- community
- design
---


We're bringing back a feature we had to [put on ice](http://blog.stackoverflow.com/2009/04/googles-openids-are-unique-per-domain/) way back when we launched Server Fault\*: **automatic account association**. Due largely to the vagaries of how Google implemented OpenID, we reluctantly made [account association a manual process](http://blog.stackoverflow.com/2009/07/cross-site-account-associations/).



But not any more. As [OpenID has matured](http://blog.stackoverflow.com/2010/04/openid-one-year-later/), we've figured out a way to make it happen. So as of today, whenever you log in to any site in our network, which is currently...




  * Stack Overflow

  * Server Fault

  * Super User

  * Meta Stack Overflow




... we will **_automatically_ find any related accounts you have on _any_ site in our network, and associate them with your account.** The only thing you need to do for this to work, is log in using the same OpenID on each site.



![](/images/wordpress/auto-association.png)



But wait! There's more!



At new user login time, in addition to association, we also:







  1. Grant you a **+100** reputation bonus on the _current_ site, as long as you have at least **+200** reputation on _any_ site in our network. So you're not treated like a newbie on every new site we launch.

  2. Copies your profile from the network site where you have the _highest_ reputation, to the current site. 

  3. Locate any of [your questions that were migrated to this site](http://blog.stackoverflow.com/2009/07/migrate-questions-between-websites/) and make you own them again. It was impossible for you to own them prior to this point, because you didn't even _have_ an account on the current site!




None of the above is truly new, but it is now fully automatic at login time. And we're not taking away manual control, either -- you can still associate and de-associate manually via the [accounts tab on your user page](http://blog.stackoverflow.com/2009/07/cross-site-account-associations/), as before.



As you might imagine, this sort of "identity that follows me from website to website" becomes more and more important as we launch more sites in our network -- [as planned with Stack Exchange 2.0](http://blog.stackexchange.com/post/518474918/stack-exchange-2-0).



\* <sub>no, I haven't forgotten it's almost the one year anniversary of [Server Fault going public](http://blog.stackoverflow.com/2009/05/server-fault-public-beta-launches/). We have something very special planned, so stay tuned...<sub>

