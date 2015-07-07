---
author: jeffatwood
comments: true
date: 2011-05-27 08:18:28+00:00
layout: post
redirect_from: /2011/05/stack-exchange-is-an-openid-provider
hero: 
slug: stack-exchange-is-an-openid-provider
title: Stack Exchange is an OpenID Provider
wordpress_id: 8228
tags:
- company
- community
- design
---

If you've logged in to a Stack Exchange site recently you may have noticed a new button on the login page:

![](/images/wordpress/stack-exchange-openid-button.png)

That's right -- **Stack Exchange is now officially an OpenID _provider_ as well as an OpenID (and OAuth 2.0) consumer!**

As a provider, we can now offer a totally seamless signup experience for new users. That is, you can create a new account entirely on our site without ever once being redirected to another website in the process.

![](/images/wordpress/stack-exchange-openid-create-account.png)

Those users who were uncomfortable with Google, Facebook, MyOpenID, AOL, or any other form of OpenID credentials can now create "local" accounts.

And best of all, it's a valid [Internet Driver's License](http://www.codinghorror.com/blog/2010/11/your-internet-drivers-license.html) -- that is, **you can use your newly minted Stack Exchange account to log in anywhere on the internet that accepts OpenID!** The confirmation email you get upon creating a new account explains how:



>
  Once you create your Stack Exchange account you can use it to log in on thousands of websites.

>
  To log in to a [Stack Exchange site](http://stackexchange.com/sites):
  
  
> 
> 
  
>   * click the 'Log in with Stack Exchange' button.
> 
  
>
>
  To log in to other websites that accept OpenID:
  
  
  
>   * enter this URL [https://openid.stackexchange.com/](https://openid.stackexchange.com/)
> 
  




Because we kept getting asked: **openid.stackexchange.com is a permanent service** we will fully support for as long as we are solvent as a company. Feel free to host some part of your identity with us forever, and we promise to ... well, hopefully not suck in the manner to which you have become accustomed.

In all honesty, I resisted becoming an OpenID provider for a long time. What the world needs so desperately is more websites that _consume_ public forms of identity. Yet Another Producer stamping out logins and passwords is not making the internet better -- it's making things worse. But then something happened.

![World's Largest Website](/images/wordpress/Website-Billboard-R_jpg_600x345_crop-smart_upscale_q85.jpg)

We got big. _Really_ big. I believe Stack Exchange is now large enough to be a reasonably valid form of public identity on the internet. And like everything else we (attempt) to do, **we endeavor mightily to do identity in a way that makes the internet better, not worse.**

That's why our login implementation is already built on two excellent open source projects …





  * [dotNetOpenAuth](http://www.dotnetopenauth.net/)

  * [OpenID Selector](http://code.google.com/p/openid-selector/)


… and we are open sourcing our OpenID provider implementation, for your public code review and forking pleasure, at [StackID](https://code.google.com/p/stackid/).

Again, I urge caution here: just because you _can_ be an identity provider doesn't mean you _should_ be one, any more than it's a good idea for me to decide to break off from the State of California and suddenly form the People's Republic of Atwoodistan.

If you're happy logging in with your current Facebook, Gmail, Yahoo, AOL, or MyOpenID credentials, fantastic! Stick with it. Whatever works for you works for us. We strongly support and encourage public, reusable forms of identity for login on the internet by _being generous in what we accept_ first and foremost. And so should you! If I want to log in to your site using OpenID or OAuth 2.0 -- let me.

