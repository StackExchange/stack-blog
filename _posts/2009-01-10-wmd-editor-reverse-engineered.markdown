---
author: jeffatwood
comments: true
date: 2009-01-10 00:36:19+00:00
layout: post
redirect_from: /2009/01/wmd-editor-reverse-engineered
hero: 
slug: wmd-editor-reverse-engineered
title: WMD Editor Reverse Engineered
wordpress_id: 346
tags:
- company
- community
- design
---


Remember that WMD reverse engineering project we [reluctantly undertook?](http://blog.stackoverflow.com/2008/12/reverse-engineering-the-wmd-editor/) Check out the [current state of the Git repository](http://github.com/cky/wmd/network):



[![git-wmd-reverse-engineering-timeline](https://i.stack.imgur.com/uKxVQ.png)](http://github.com/cky/wmd/network)



This is a major milestone -- we've **essentially de-obfuscated the WMD code**, which was my #1 goal!



A few thanks are in order:







  1. [Chris Jester-Young](http://stackoverflow.com/users/13/chris-jester-young) for getting the ball rolling, doing quite a bit of de-obfuscation, and setting up the initial repository.

  2. [Shawn](http://stackoverflow.com/users/26/shawn) for contributing versions and setting up [a stack overflow "question" on this topic](http://stackoverflow.com/questions/406132/reverse-engineering-the-wmd-editor).

  3. [Dana](http://stackoverflow.com/users/3161/dana) for doing the lion's share of the de-obfuscation work and getting us to that magical 1.0, completely de-obfuscated milestone.




Also, [cbguder](http://stackoverflow.com/users/2119/can-berk-g252der), [dbr](http://stackoverflow.com/users/745/dbr), and [zacherates](http://stackoverflow.com/users/2603/zacherates) -- we appreciate you jumping in early as well. Hopefully you'll keep going and help us on the 1.0 stuff!



It turns out Dana is a huge fan of [fake plastic rock](http://www.fakeplasticrock.com/), just like me, so I was happy to reward him for his work with one of my [customized](http://www.fakeplasticrock.com/2008/11/09/guitar-hero-world-tour-guitar-the-best-fake-plastic-axe-ever/) Les Paul guitars:



![blood-voodoo-red-metallic-guitar](/images/wordpress/bloodvoodooguitarjx81.jpg)



(ok, it's not exactly this one, but it's very similar -- silver metallic instead of red metallic faceplate!)



Now that we've gotten the painful de-obfuscation / un-minification out of the way, it's time to begin improving our WMD editor:




  1. [Arrow keys don't work in Firefox 3 on questions/answer pages](http://stackoverflow.uservoice.com/pages/general/suggestions/14681-arrow-keys-don-t-work-on-question-answers-pages)

  2. [Make ctrl-delete work like a normal text editor](http://stackoverflow.uservoice.com/pages/general/suggestions/16598-make-ctrl-delete-work-like-a-normal-text-editor) (WMD keyboard shortcuts should be configurable and/or disable-able)

  3. [Several](http://stackoverflow.uservoice.com/pages/general/suggestions/19254-disabled-characters-in-editor) [Problems](http://stackoverflow.uservoice.com/pages/general/suggestions/38866-fix-the-backslash-in-the-markdown-editor) with international keyboards -- all related to keyboard shortcuts

  4. [General WMD performance concerns](http://stackoverflow.uservoice.com/pages/general/suggestions/86059-improve-performance-of-so-on-firefox3-on-windows). We believe WMD could do with some optimization, particularly for the "idle" case.

  5. I'd like to see us use [CSS image sprites](http://www.alistapart.com/articles/sprites) for the toolbar buttons rather than downloading 6-8 individual button graphics in 6-8 HTTP requests.




Anyway, if you have JavaScript chops and want to dive in, I **encourage you to [grab the repository](http://code.google.com/p/wmd-new/)** and go for it!

