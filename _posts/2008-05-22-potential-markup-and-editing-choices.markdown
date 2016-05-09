---
author: jeffatwood
comments: true
date: 2008-05-22 10:43:02+00:00
layout: post
redirect_from: /2008/05/potential-markup-and-editing-choices
hero: 
slug: potential-markup-and-editing-choices
title: Potential Markup and Editing Choices
wordpress_id: 44
tags:
- company
- design
---


Question and answer entry will be arguably the most crucial piece of stackoverflow. I used the post [Is HTML a Humane Markup Language?](http://www.codinghorror.com/blog/archives/001116.html) as a form of collaborative research to determine what our Q&A; editor should look like. Based on the (extensive!) feedback, I've reached three conclusions:







  1. Most programmers want either an HTML subset or [Markdown](http://daringfireball.net/projects/markdown/dingus).

  2. Many prefer a formatting toolbar, although I view it as superfluous.

  3. Real-time preview of text formatting is an absolute must.




Good programmers never write what they can steal or borrow. With that in mind, I did some research and found the promising but unfortunately named [WMD: The Wysiwym Markdown Editor](http://wmd-editor.com/) from AttackLab.



[![wmd-advanced-demo1](https://i.stack.imgur.com/6UxLr.png) ](http://wmd-editor.com/examples/splitscreen)



I emailed [AttackLab](http://attacklab.net/) and John Fraser was kind enough to respond with a code drop. Apparently there's going to be an open source release at [http://wmd.googlecode.com/](http://wmd.googlecode.com/) any day now -- it will also include a post-processing callback we can use to do syntax highlighting. Here's [a demo someone hacked together](http://softwaremaniacs.org/playground/showdown-highlight/) using WMD and a syntax highlighter:



[![showdown-demo](https://i.stack.imgur.com/sr0C1.png)](http://softwaremaniacs.org/playground/showdown-highlight/)



Adopting tools like these means we'd be very intimately tied to JavaScript on the client, of course, but it's hard for me to see how that's a problem on today's web.



What do you think of these solutions? **Would they work for you when posting programming questions and answers on stackoverflow?**

