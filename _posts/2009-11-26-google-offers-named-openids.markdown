---
author: jeffatwood
comments: true
date: 2009-11-26 06:09:21+00:00
layout: post
redirect_from: /2009/11/google-offers-named-openids
hero: 
slug: google-offers-named-openids
title: Google Offers Named OpenIDs
wordpress_id: 2197
tags:
- company
- background
- community
---


**I love Google** -- and I'm not just saying that because [they deliver 90% of our traffic](http://www.codinghorror.com/blog/archives/001224.html) and [more than 60% of user OpenIDs](http://meta.stackoverflow.com/questions/31021/what-openid-providers-should-we-feature-on-the-login-page), I swear. But I am a little bitter that their OpenID support has two major flaws which cause us a great deal of ongoing pain:







  1. **Google's OpenIDs are [domain specific](http://blog.stackoverflow.com/2009/04/googles-openids-are-unique-per-domain/)**. The very same gmail account, if you sign up on 5 different OpenID enabled websites, will result in 5 different random hash OpenIDs being generated. While this is probably OK in the general case (though still an exceedingly rare behavior among OpenID providers), it's incredibly aggravating for us because we like to let users map their Stack Overflow, Server Fault, Super User, Meta, and Careers accounts to each other. And cross-site user mapping is a huge PITA when there is no common per-user identifier between those 5 sites. We have a workaround in place but it is not pretty, and I think writing it drove Jarrod to drink.

  2. **Google's OpenIDs are random hashes to the server.** This means I have no idea if you used crazyman45@gmail.com, hellaleet@gmail.com, or lovezwafflez1@gmail.com to sign up with us. It is literally impossible for me to help you figure out which one you need to use to log in. All I can tell you is, "you used a gmail account". Which one, I have no idea. And neither do you, apparently.




While there is certainly an argument for privacy to be made here, it sure would be nice to have the _choice_ between a random per-site hash OpenID like …





## https://www.google.com/accounts/o8/id?id=aitoaxleeuzwdizb1g2_wvnob5pwvx





And a stable, readable OpenID like …





## http://www.google.com/profiles/your.name.here





Well, the good news is, now you can! Google just gave us a fantastic Thanksgiving Day present in the form of [Google Profiles](http://www.google.com/profiles) supporting OpenID. And with a Google Profile, you get to pick a named URL of your choice!



So, if you'd like to add a named Google OpenID to your account, here's how. 



First, **log in as yourself**. Go to your user page and look for the "add openid" or "change openid" link. (Note that we support up to two openids per account and you can change them at any time.)



![so-openid-google-1](/images/wordpress/so-openid-google-1.png)



Since you're **already logged in** you are adding a new openid. Enter your [Google Profile](http://www.google.com/profiles) URL in the area where it says "manually enter your OpenID URL", and click Login.



![so-openid-google-2](/images/wordpress/so-openid-google-2.png)



You'll get redirected to Google where you can OK the use of your OpenID by our website.



![so-openid-google-3](/images/wordpress/so-openid-google-3.png)



You'll get redirected back to us, and we confirm that yes, indeed, you _do_ want to add this OpenID to your account. (In case you're wondering, this confirmation is required -- otherwise clicking a single evil link could automatically and silently add a new, rogue OpenID to your account effectively owning you.)



![so-openid-google-4](/images/wordpress/so-openid-google-4.png)



Now you're back on your user page -- note the newly added OpenID on my account. And if I want to change it, I can just click "Change OpenID" any time I want.



![so-openid-google-5](/images/wordpress/so-openid-google-5.png)



The only thing that throws a monkey wrench into this process is when you have a **single** OpenID provider and that provider either changes their string format, or goes belly-up. Don't worry, both cases are fixable, but it requires emailing us. Still, I highly recommend having two different OpenID providers associated with your account at any given time.



**Kudos to Google for rolling out named OpenID support** in the form of [Google Profiles](http://www.google.com/profiles). While you can of course continue to use the existing Google OpenID support, if you plan to use multiple 'stack sites (or Stack Exchange sites) I assure you that your life will be much easier if you pick a stable, named Google OpenID rather than relying on the default random hashes.

