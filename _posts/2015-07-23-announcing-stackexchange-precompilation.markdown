---
layout: post
date: 2015-07-23
author: m0sa
title: Announcing StackExchange.Precompilation
description: "Do you have an ASP.NET MVC 5 project and hate how slow aspnet_compiler.exe is? Do you feel you're missing out on all the meta-programming goodies DNX brings to the table? We have a solution for you. Enter StackExchange.Precompilation."
tags:
- engineering
- development
- announcement
---

One of the main guidelines at Stack Exchange is that we are open by default. So, I'm excited to announce that we're open-sourcing [StackExchange.Precompilation](https://github.com/stackexchange/stackexchange.precompilation), a tool to help you bring faster pre-compile times and Roslyn (DNX inspired) goodies to your _old_ ASP.NET MVC 5 project.

What does it do, you ask? It replaces the C# compiler with a custom executable (which uses Roslyn), that compiles both your C# source files (.cs) as well as Razor view files (.cshtml) into a single assembly, while allowing you to plug into the compilation (inspired by the [DNX metaprogramming capabilities](https://github.com/aspnet/dnx/tree/36369137b00f8c77a67db7afb4338082c6323896/samples/HelloWorld/compiler/preprocess)).

Someone might consider this crazy, but let me give you an idea of why it was the only way to go for us. As we started adding translations to our Q&A engine ([Portuguese](http://blog.stackexchange.com/2014/01/ola-mundo-announcing-stack-overflow-in-portuguese/), [Japanese](http://blog.stackexchange.com/2014/12/stack-overflow-in-japanese/), [Russian](http://blog.stackexchange.com/2015/06/welcome-nicolas-chabanovsky-and-stack-overflow-in-russian/)), we noticed dramatic increases in build times. Staging build times sky-rocketed from under 2-minutes to 5+ minutes, which resulted in [a lot of spare time and distraction opportunities](https://xkcd.com/303/) for team members waiting on a pending deploy to meta, and later production (those deployment build times increased accordingly as well). We tracked down the increased build times to `aspnet_compiler.exe`, specifically to how it compiles Razor views. Although the _compilation_ (C# -> IL) is parallel, the _generation_ of C# from Razor views (.cshtml -> C#) is serial. We do a lot of meta-programming to bake translations into our views at (pre-)compile-time (as opposed to doing a lookup for each string at run-time). The only way to make this process fast is by making it parallel, which is unfortunately impossible with ASP.NET MVC 5 tooling.

A solution for the problem was created in our localization project. What happened next is I switched from the Core Q&A team to the Careers team (yes, [team switching is a thing at Stack Exchange](http://blog.stackexchange.com/2015/07/going-from-mobile-back-to-the-web/)) for a while, to reconcile different localization tools used by both teams. StackExchange.Precompilation is the result of packaging Core's "make-pre-compilation-fast-and-pluggable" code into a package that we, and now you, can re-use between teams. Here's a nice chart to illustrate what has happened to build times in the past year thanks to optimizing pre-compilation (spoiler: they're back to around 2 minutes):

![SE Network Dev - Average Build Times](https://i.stack.imgur.com/z6Yzx.png)

Another nice side effect is that our MVC 5 views can now contain C# 6 code in Razor code blocks. And it gets even better! In case you don't need (or want) to pre-compile in each build, the package provides a Roslyn-backed ViewEngine, which gives you the same C# 6 support, at run-time.

A future prospect is migrating to ASP.NET 5 and MVC 6, where DNX and the MVC 6 Razor implementation can actually do parallel pre-compilation and meta-programming. When that happens, migrating our localization meta-programming code won't be difficult as the interfaces are [nearly identical](https://github.com/aspnet/dnx/blob/1.0.0-beta2/samples/HelloWorld/compiler/preprocess/HelloMetaProgramming.cs).

Start using the package today by running `Install-Package StackExchange.Precompilation.Build` in your package manager console. Additional instructions and technical details are available on [GitHub](https://github.com/stackexchange/stackexchange.precompilation) and [NuGet](https://www.nuget.org/packages/StackExchange.Precompilation.Build).
