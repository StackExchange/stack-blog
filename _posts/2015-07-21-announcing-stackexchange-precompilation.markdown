---
layout: post
draft: true
date: 2015-07-21
author: m0sa
title: Announcing StackExchange.Precompilation
description: "Do you have an ASP.NET MVC 5 project and hate how slow aspnet_compiler.exe is? Do you feel you're missing out on all the meta-programming goodies DNX brings to the table? We have a solution for you. Enter StackExchange.Precompilation."
tags:
- engineering
- development
- announcement
---

One of the main guidelines at Stack Exchange is that we are open by default. In concordance with that, I'm excited to announce that we're open-sourcing [StackExchange.Precompilation](https://github.com/stackexchange/stackexchange.precompilation), a tool to help you bring faster pre-compile times and Roslyn (DNX inspired goodies) to your _old_ ASP.NET MVC 5 project.

I've been involved with our localization project from the work of bringing you [Stack Overflow in Portuguese](http://blog.stackexchange.com/2014/01/ola-mundo-announcing-stack-overflow-in-portuguese/). One of the main issues we were starting to see once we started adding languages ([Japanese](http://blog.stackexchange.com/2014/12/stack-overflow-in-japanese/), [Russian](http://blog.stackexchange.com/2015/06/welcome-nicolas-chabanovsky-and-stack-overflow-in-russian/)), were dramatic increases in build times. Staging build times went from under 2-minutes to 5+ minutes, which resulted in [a lot of spare time and distraction opportunities](https://xkcd.com/303/) for everybody waiting to deploy something to meta, and finally production (those deployment build times increased accordingly as well). We tracked down the increased build times down to `aspnet_compiler.exe` as we do a lot of meta-programming to bake translations into our pre-compiled views (as opposed to doing a lookup for each string at run-time). A solution to the problem was cowboyed into our localization project. What happened next is I switched (yes, [that's a thing at Stack Exchange](http://blog.stackexchange.com/2015/07/going-from-mobile-back-to-the-web/)) from Core to the Careers team for a while to work on bridging the gap between the localization tools that are used by both teams. StackExchange.Precompilation is a result of packaging Core's "make-compilation-fast-and-pluggable" code into a nice package that we and now **you** can re-use. 
A picture says more than a thousand words, so here's a nice graph of what has happened to our build times in the past year while we were developing it:

TODO insert picture here

More technical details are available on [GitHub](https://github.com/stackexchange/stackexchange.precompilation)