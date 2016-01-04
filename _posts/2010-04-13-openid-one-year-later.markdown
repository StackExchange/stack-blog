---
author: jeffatwood
comments: true
date: 2010-04-13 18:59:26+00:00
layout: post
redirect_from: /2010/04/openid-one-year-later
hero: 
slug: openid-one-year-later
title: OpenID, One Year Later
wordpress_id: 2914
tags:
- company
- background
---


We made a few key technology bets when we created Stack Overflow:







  * [OpenID](http://openid.net/)

  * [Markdown](http://en.wikipedia.org/wiki/Markdown)

  * [ASP.NET MVC](http://www.asp.net/mvc/)




I covered [Markdown, One Year Later](http://blog.stackoverflow.com/2009/10/markdown-one-year-later/) in an earlier post, and now I'd like to turn my attention to the first item in the list: OpenID.



[![](https://i.stack.imgur.com/6C2aN.png)](http://openid.net/)



After spending nearly two years with OpenID as our [decentralized, open login mechanism](http://openid.net/get-an-openid/what-is-openid/), I have some thoughts based on my experience I'd like to share.



First, to understand our position on OpenID, please read [Does The World Really Need Yet Another Username and Password](http://www.codinghorror.com/blog/2008/05/openid-does-the-world-really-need-yet-another-username-and-password.html). If you don't have time, I'll quote the most relevant paragraph:





<blockquote>
I realize that OpenID is far from an ideal solution. But <strong>right now, the one-login-per-website problem is so bad that I am willing to accept these tradeoffs for a partial worse is better solution</strong>. There's absolutely no way I'd put my banking credentials behind an OpenID. But there are also dozens of sites that I don't need anything remotely approaching banking-grade security for, and I use these sites far more often than my bank. The collective pain of remembering all these logins -- and the way my email inbox becomes a de-facto collecting point and security gateway for all of them -- is substantial.
</blockquote>





So if we are evangelizing OpenID to some degree, it is because **I would rather be part of the solution than yet another brick in the wall of the problem.** Even _if_ it involves a tiny bit of short-term friction. Be the change you want to see, right?



In the almost two years since we began using OpenID, that tiny bit of friction has gotten progressively smaller:







  * Google began fully supporting OpenID. This was (and is) _huge_. As you can see from [these meta stats](http://meta.stackoverflow.com/questions/31021/what-openid-providers-should-we-feature-on-the-login-page), Google is by far our largest OpenID provider at 61% of all registered accounts.

  * Microsoft [announced OpenID support](http://blogs.verisign.com/infrablog/2007/02/verisign_microsoft_partners_to_1.php). Although there was a beta, and beta live.com OpenIDs were used on our website -- the current state of their OpenID support is in limbo. Still, being Microsoft, their official (though technically nonexistent, and I'm sure trapped in [strategy tax hell](http://archive.scripting.com/2001/04/29#strategyTax)) support legitimizes OpenID as a standard.

  * Most client implementations of OpenID have switched from "enter your OpenID URL" to "click the logo of the company that provides your identity". OpenID was frequently criticized for being too URL-centric when the user identity world is email-centric, so this is a significant usability improvement.

  * We implemented [support for up to two OpenID providers per user](http://blog.stackoverflow.com/2009/01/we-now-support-multiple-openids/). This flexibility turns out to be important, so you can switch out or change the OpenID identities in your virtual wallet as you see fit. It's handy to have a backup form of identity "on you", just like in real life.




The trend is certainly encouraging. 



However, there have also been a few things that happened which illustrate the _risks_ of OpenID, too:







  * Several lesser providers (Technorati, Vidoop, Mozilla Weave) went belly-up, leaving their users stranded with no way to authenticate.

  * Occasionally OpenID providers will have bugs or service outages -- even big ones like Yahoo. Fortunately this is quite rare, but it does happen, and [troubleshooting it](http://meta.stackoverflow.com/questions/1774/i-cant-log-in-with-my-openid-troubleshooting-tips) can be a pain precisely because it's open and decentralized, and there are three parties involved -- the website, the user, and the OpenID provider.

  * The OpenID protocol itself can be implemented in unusual or incomplete ways by different providers. This leads to challenges for us, but fortunately we have an excellent dialog with [Andrew Arnott](http://stackoverflow.com/users/46926/andrew-arnott), the primary author of the open source [DotNetOpenAuth](http://www.dotnetopenauth.net/) library we use. We [support the project financially](http://blog.stackoverflow.com/2009/12/stack-overflow-gives-back/) and also try to contribute as many bugfixes as possible, so OpenID can get better for _everyone_.




There are certainly challenges, and although I am open to alternative login mechanisms, particularly for [Stack Exchange](http://stackexchange.com/), I'm still bullish on OpenID. We have to keep move forward on fixing the login explosion problem, because the status quo _sucks_.



To that end, we're continuing to refine our implementation. 



Although I listed Google supporting OpenID as my #1 improvement since we began using OpenID, their support also contains a bit of a poison pill --  [Google GMail OpenIDs are specific to the domain you create them on](http://blog.stackoverflow.com/2009/04/googles-openids-are-unique-per-domain/). In other words, the same GMail OpenID used on stackoverflow.com, serverfault.com, and superuser.com results in three different OpenID URLs being created. This is [completely by design](http://groups.google.com/group/google-federated-login-api/web/the-most-important-technical-issue-in-using-the-google-accounts-api?pli=1), but I should note that _no other OpenID provider to date has done this except Google_. To their credit, they do offer proper named OpenIDs now in the form of [Google Profile OpenIDs](http://blog.stackoverflow.com/2009/11/google-offers-named-openids/), but this does nothing to fix the status quo for GMail OpenIDs.



That's a major bummer for site networks like us with multiple domains. We use the OpenID string as your user "fingerprint", so if your "fingerprint" changes, we can't tell who you are any more. It's a frustrating problem, but we think we've finally come up with a fix: **we demand email from Google GMail OpenIDs!**



If we have an email address from a verified OpenID email provider (that is, an OpenID from a large email service we trust, like Google or Yahoo), then it's guaranteed to be a globally unique string. We treat this as part of the identifying user token, attached _only_ at login time, that is not editable by the user.



So our cross-site user account matching now works this way:







  1. Match by **GUID**. This is something we generate and assign during account association, so it's a perfect fingerprint.

  2. match by **OpenID URL**. This works for the vast majority of OpenID providers.

  3. match by **OpenID provided email address** ... if you are on our trust whitelist. This works for those rare OpenID providers (currently, only Google GMail) who generate domain-specific identifiers.




This satisfies all known OpenID providers, so **we can now potentially associate your accounts, across all of our websites, automatically**. You'll still have to log in, of course, but the login itself could trigger account association for every site in the network.



There is one, and only one downside: we must demand email from Google OpenIDs. Email is not usually required to use our sites, but  you can't log in via Google if you refuse to provide email to us. You can always switch OpenID providers, of course, but we regretfully must make the email demand mandatory in the case of Google.



Still, given the overwhelming dominance of Google OpenIDs, we think that's a major improvement, and only a minor tradeoff.

