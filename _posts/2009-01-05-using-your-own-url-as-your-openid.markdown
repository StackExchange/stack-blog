---
author: jeffatwood
comments: true
date: 2009-01-05 06:40:46+00:00
layout: post
redirect_from: /2009/01/using-your-own-url-as-your-openid
slug: using-your-own-url-as-your-openid
title: Using Your Own URL as Your OpenID
wordpress_id: 279
tags:
- company
- design
---


One of the cooler features of OpenID is delegation. This means, instead of having your OpenID identifier be



**`yourname.myopenid.com`**



it can be simply



**`yourdomain.com`**



Much easier to remember, right? And it's really easy to do, too! Here's how I did it.



First, [sign up for an OpenID](http://openid.net/get/) with the provider of your choice (note that Google, Yahoo, and AOL are all OpenID providers now, so you may already have one -- but beware that not all providers _support_ delegation, either). I might be a little biased, but I prefer [our very own provider at openid.stackexchange.com](http://openid.stackexchange.com), so I recommend signing up with us at Stack Exchange. 





## [openid.stackexchange.com](http://openid.stackexchange.com)





To enable your domain to act as a _delegate_ to the OpenID provider, you'll need to figure out what your OpenID identifier is. This is always an URL. To determine your Stack Exchange identifier, visit your profile page on [openid.stackexchange.com](http://openid.stackexchange.com) and look for the **Use your own URL to log in** link. Then click it!

![](/images/wordpress/stack-exchange-openid-delegation.png)

This explains what you need to do. It's simple; just add two HTML header tags to your web page, like so:


    
    
    <html>
    <head>
    <font color="red"><link rel="openid2.provider" 
      href="https://openid.stackexchange.com/openid/provider"></font>
    <font color="red"><link rel="openid2.local_id" 
      href="https://openid.stackexchange.com/user/a0cd3405-f76e-429e-b935"></font>
    </head>
    …
    





Once you've set this up, click **my logins** on your profile page, then click **add new login…** to add the new, delegated login to your account!

