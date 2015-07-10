---
author: jeffatwood
comments: true
date: 2009-10-15 09:25:23+00:00
layout: post
redirect_from: /2009/10/markdown-one-year-later
slug: markdown-one-year-later
title: Markdown, One Year Later
wordpress_id: 2053
tags:
- company
- background
- design
---


We made a few key technology bets when we created Stack Overflow:







  * [OpenID](http://openid.net/)

  * [Markdown](http://en.wikipedia.org/wiki/Markdown)

  * [ASP.NET MVC](http://www.asp.net/mvc/)




I'll defer the discussion on the other two items for another day, but after **spending a year immersed in Markdown** -- [the lightweight markup language we use to format posts on all Trilogy sites](http://stackoverflow.com/editing-help) -- I have some thoughts I'd like to share.



We knew early on that there were [a handful of Markdown Gotchas](http://blog.stackoverflow.com/2008/06/three-markdown-gotcha/), thanks to the sage advice of John Fraser (who, sadly, I have completely lost contact with.) Based on those gotchas, we quickly adjusted our Markdown support to fix a few obvious things:







  1. Removed support for intra-word emphasis `like_this_example`

  2. Added auto-hyperlink support for http:// URLs in posts




Apparently GitHub also uses Markdown, and they independently arrived at some of the same conclusions we did -- synthesizing something they call [GitHub Flavored Markdown](http://github.github.com/github-flavored-markdown/).







  1. Removed support for intra-word emphasis `like_this_example`

  2. Added auto-hyperlink support for http:// URLs in posts

  3. Automatic return-based linebreaks instead of "two spaces at end of line" linebreaks

  4. Support for some magic strings that auto-convert to GitHub specific links




Since GitHub and Stack Overflow match exactly on #1 and #2, it's fairly safe to say that those are in fact deficiencies in Markdown, at least for a programming audience. (Though I'd argue they apply to general audiences, too.)



As for #3, that's one I hadn't considered. In normal Markdown, this:




    
    
    Roses are red¶
    Violets are blue¶
    





Will render like this:

    
    
    Roses are red violets are blue
    





The Markdown answer is to add two spaces at the end of the line (or a literal <br>, I suppose).




    
    
    Roses are red  ¶
    violets are blue¶
    





Although it's easy _once you know the trick_, this is far from intuitive to most. I'm reminded a bit of the [double-click mouse problem](http://www.codinghorror.com/blog/archives/000096.html). I wonder if we should adopt the GitHub linebreak approach here. 



As for the fourth item, when text is entered in these specific formats ...




    
    
    * SHA: be6a8cc1c1ecfe9489fb51e4869af15a13fc2cd2
    * User@SHA ref: mojombo@be6a8cc1c1ecfe9489fb51e4869af15a13fc2cd2
    * User/Project@SHA: mojombo/god@be6a8cc1c1ecfe9489fb51e4869af15a13fc2cd2
    * \#Num: #1
    * User/#Num: mojombo#1
    * User/Project#Num: mojombo/god#1
    





... those magic strings are detected by the GitHub Flavored Markdown and auto-converted into GitHub specific hyperlinks. [Something similar](http://meta.stackoverflow.com/questions/1010/advanced-syntax-ideas) has been proposed on meta for internal Stack Overflow references, so this is an idea we've been entertaining for some time as well.



Markdown is remarkably flexible, because it allows you to intermix [a narrow list of whitelisted HTML](http://meta.stackoverflow.com/questions/1777/what-html-tags-are-allowed) tags with [Markdown "fancy ASCII" syntax](http://meta.stackoverflow.com/editing-help) in a fairly logical way, at least most of the time.



So, now that _you've_ had a chance to mess around with Markdown for a year -- **what are your thoughts?**

