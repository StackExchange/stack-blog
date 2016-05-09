---
author: jeffatwood
comments: true
date: 2009-12-28 02:03:36+00:00
layout: post
redirect_from: /2009/12/introducing-markdownsharp
hero:
slug: introducing-markdownsharp
title: Introducing MarkdownSharp
wordpress_id: 2388
tags:
- company
- community
---


One of the things that came out of [Markdown, One Year Later](http://blog.stackoverflow.com/2009/10/markdown-one-year-later/) was that we _really_ needed to **open source our C# server-side implementation of Markdown**. 



While the client side implementation of Markdown is [already open sourced](http://blog.stackoverflow.com/2009/01/wmd-editor-reverse-engineered/), there are two sides to the Markdown story on Stack Overflow -- what appears in the Javascript preview on the client, and what is rendered in C# on the server and ultimately stored in the database. While we are trying to normalize the client and server implementation over time -- I've made significant progress in the last two weeks in doing so -- there are inevitably small differences that creep in over time. It would be nice to have more eyeballs on this process to assist.



Since [the original C# library we used for Markdown](http://aspnetresources.com/blog/markdown_announced.aspx) was not open source, this was a problem. I mailed the author, [Milan Negovan](http://aspnetresources.com/), and he granted copyright to me.





>
Hi there, guys!

> 
> 
Sure, I don’t mind at all. I’ve always wanted the community to improve and contribute to its development, but never found the proverbial bandwidth to run the project that way.

> 
> 
Cheers!  

Milan






So, **I've released our C# implementation of Markdown under a proper open source license** -- as [MarkdownSharp](http://code.google.com/p/markdownsharp/)!



[![markdown-sharp-logo](https://i.stack.imgur.com/p54d6.png)](http://code.google.com/p/markdownsharp/)



[http://code.google.com/p/markdownsharp/](http://code.google.com/p/markdownsharp/)



I've already made a few changes to properly package it as a decent open source project:







  * included relevant links, documentation, and related files

  * added MDTest 1.1 test suite

  * added Simple test suite

  * both NUnit and console runnable tests

  * standard Benchmark with short, medium, and long Markdown samples

  * refactored and profiled for 2x - 5x more performance

  * the Stack Overflow specific changes (such as stricter italics/bold) are configurable, so you can toggle them on and off.




One nice side effect of this process is that I've been able to incorporate [quite a few bug fixes](http://code.google.com/p/markdownsharp/source/list), some of them fairly serious. The [failure to escape backticks](http://meta.stackoverflow.com/questions/12694/escaping-backticks-fails) was a big one, and there was a subtle [bug involving a single character of whitespace](http://code.google.com/p/markdownsharp/source/detail?r=20) that caused all `<hr/>`s to be wrapped in paragraph tags since.. well, forever.



Anyway, [take a look at the project](http://code.google.com/p/markdownsharp/), feel free to [browse the source](http://code.google.com/p/markdownsharp/source/browse/), and **please contribute whatever you can to make it better for everyone**.

