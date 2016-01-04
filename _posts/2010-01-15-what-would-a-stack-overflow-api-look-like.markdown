---
author: jeffatwood
comments: true
date: 2010-01-15 10:09:14+00:00
layout: post
redirect_from: /2010/01/what-would-a-stack-overflow-api-look-like
hero: 
slug: what-would-a-stack-overflow-api-look-like
title: What Would a Stack Overflow API Look Like?
wordpress_id: 2544
tags:
- company
- API
- background
- community
---


We are now gearing up to build the first official Stack Overflow API.



Please bear in mind that **the first version of the API will be read-only by design**. We'd rather attack the much harder problem of writing (that is, submitting questions, answers, and comments) in V2 with improvements rolled in from our experience having the read-only V1 API out there first.



[![](https://i.stack.imgur.com/UYyR6.png)](http://geekandpoke.typepad.com/geekandpoke/2008/05/the-new-social.html)



To get an idea of what working with this imaginary Stack Overflow API _could_ look like, browse the project [Stack Overflow user Kevin Montrose](http://stackoverflow.com/users/80572/kevin-montrose) set up:





## Stack Exchange API on Google Code









  * [Project homepage](http://code.google.com/p/stackexchange-api/)

  * [Documentation](http://stackexchange-api.googlecode.com/svn/trunk/docs/index.htm)

  * Documentation for the current Stack Overflow "API" [it uses](http://code.google.com/p/stackexchange-api/wiki/CurrentAPI) (warning: bad, incomplete, broken, unsupported)




To be 100% clear, we are NOT blessing this as an official API, but we'd like to take advantage of the hard work Kevin has rolled into his code to help produce **a proper Stack Overflow API that doesn't suck**. 



Because what currently passes for an API on Stack Overflow was never truly intended as such, it's important to regard what's in place now as a preliminary sketch, a temporary crutch, a placeholder for something better. 



To produce a decent read-only V1 API for Stack Overflow, we need your input:




  1. Read through [the highest voted questions tagged [api]](http://meta.stackoverflow.com/questions/tagged?tagnames=api&sort=votes) on meta.

  2. Browse Kevin's document **[Desired Stack Overflow API](http://code.google.com/p/stackexchange-api/wiki/DesiredSOApi)** which is based on his experience writing SXAPI.




Done? Good.



Now, **what do you want to build that uses the API?** The perfect API for this task, called from your preferred programming language, would do ... what, exactly? What's clean? What's simple? What's supportable and scalable?



If WordPress comments are too limiting, and you'd like to post some code samples or use Markdown formatting, feel free to use **[the SXAPI Meta question](http://meta.stackoverflow.com/questions/33397/sxapi-a-net-api-for-so-f-u-meta-updated-to-version-4-0)** to do so -- or any place on Meta, really, as long as it's [properly tagged with [api]](http://meta.stackoverflow.com/questions/tagged/api).

