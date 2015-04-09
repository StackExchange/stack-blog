---
author: jeffatwood
comments: true
date: 2012-02-18 23:35:01+00:00
layout: post
redirect_from: /2012/02/stack-exchange-open-source-projects
slug: stack-exchange-open-source-projects
title: Stack Exchange Open Source Projects
wordpress_id: 11084
tags:
- company
- background
- stackoverflow
---

While we decided a long time ago that [we wouldn't be open-sourcing the core Stack Exchange Q&A engine](http://meta.stackoverflow.com/questions/3086/will-open-sourcing-stack-overflow-destroy-our-business-model), we do try very hard to open source as many useful parts of our code as we can.

As Stack Overflow is one of the most prominent Microsoft .NET-created sites for software developers in the world, we feel that it's part of our mission to help lead fellow .NET developers -- and the most effective way to do that is by **contributing some of the code that we use to build Stack Overflow and Stack Exchange back to the greater .NET developer community as reusable open source packages**. This isn't just a fundamental part of [every Stack Exchange developer's "be more awesome" plan](http://blog.stackoverflow.com/2011/07/how-much-should-you-pay-developers/), it's an explicit goal embedded in the very DNA of the company.

In fact, over the last few years, we've contributed a number of useful open source projects back to the world:



## [Dapper](http://code.google.com/p/dapper-dot-net/)



Dapper is, quite simply, the world's most elegant .NET micro-ORM™. We created Dapper out of frustration with all the existing .NET ORMs that were out there. It is the simplest and fastest thing that works, the thinnest sensible layer you can put over your database without getting all Enterprisey(C) on you like, uh, [some other ORMs](http://www.asp.net/entity-framework). It is a shining example of the KISS (Keep It Simple) and YAGNI (You Ain't Gonna Need It) principles in action. If you need to access a SQL database from .NET, try it out. You just might fall in love with it. Read [a bunch more about Dapper over on Sam's blog](http://www.google.com/search?q=site%3Asamsaffron.com+dapper+orm).



## [StackID](http://code.google.com/p/stackid/)



On Stack Exchange, you can log in with any OpenID provider and any OAuth 2.0 provider, including Google, Facebook, Yahoo, and so on. But as of May 2011, we also [issue our own credentials](http://blog.stackoverflow.com/2011/05/stack-exchange-is-an-openid-provider/) for those people who want to have a traditional username/password arrangement. StackID is the .NET OpenID provider we created, so we can be both an OpenID consumer (we accept all OpenIDs, as well as OAuth 2.0 where available) and an OpenID provider -- that is, we issue our own OpenIDs that are valid on any website that accepts an OpenID. This in turn is based on the excellent work of the open source [dotNetOpenAuth](http://www.dotnetopenauth.net/) library.



## [MiniProfiler](http://code.google.com/p/mvc-mini-profiler/)



Here at Stack Exchange, [Performance is a Feature](http://www.codinghorror.com/blog/2011/06/performance-is-a-feature.html), and we found the absolute best way to emphasize our shared family value of performance is to keep webapp performance numbers front and center in every .NET developer's web browser. Yes, even in production. If you are a developer you'll see a little number in the upper right hand corner on every single Stack Exchange page you load -- that's how long it took to render the page. And it's a one click operation to drill down, two clicks to take those performance numbers and share them with blame them on someone else on the team. It's a wonderful system that I can't recommend highly enough to every .NET developer who works on a webapp. If that's you, go download it. Now. Remember, we use .NET partly because it really is blindingly fast, but all it takes is a few lines of errant code to throw all those performance benefits (and more) in the toilet. So [download and use MiniProfiler](http://code.google.com/p/mvc-mini-profiler/) to make sure your fast code stays fast!



## [MarkdownSharp](http://code.google.com/p/markdownsharp/) and [PageDown](http://code.google.com/p/pagedown/)



Markdown is, of course, the simple plain-text-alike markup language that we use throughout Stack Exchange for formatting. But we have to convert it from "raw" Markdown to "cooked" HTML and that takes code. We provide two implementations, for server-side C# Markdown use MarkdownSharp and for client-side JavaScript real time Markdown preview use PageDown. I did a lot of the work on MarkdownSharp, but [Ben](http://blog.stackoverflow.com/2010/06/welcome-stack-overflow-valued-associates-00006-and-00007/) did most everything on PageDown and is now officially maintaining both of these.

Since this gets asked all the time, _yes, it is legal to mix HTML of any kind within Markdown_. MarkdownSharp and PageDown don't do any cleanup of the HTML, they only guarantee that valid Markdown will be converted to valid HTML for display purposes. You must bolt on your own HTML sanitization to taste. If you're looking for basics, start with [this C# sanitization routine](http://refactormycode.com/codes/333-sanitize-html) and [this tag balancing routine](http://refactormycode.com/codes/360-balance-html-tags). They are mostly loops and regular expressions, so trivially translatable to most languages.



## [Booksleeve](http://code.google.com/p/booksleeve/)



[Redis](http://redis.io/) is our in-memory key-value store of choice. We started out using it just a little, but now it's become an absolutely critical and totally indispensable part of our infrastructure, [much like HAProxy](http://blog.stackoverflow.com/2010/08/stack-overflow-sponsors-haproxy/). We use Booksleeve for pipelined, asynchronous, multiplexed and thread-safe access to Redis via our C# code. Performance here is beyond critical, as we talk to Redis from every web server constantly, and we've been through several passes of refinements and improvements already. If you, too, need an in-memory key-value store for your .NET webapp, consider the Redis and Booksleeve combination we use. Works great for us!



## [Data Explorer](http://code.google.com/p/stack-exchange-data-explorer/)



Everything contributed to Stack Exchange is under a Creative Commons license. Stack Exchange Data Explorer is the open source .NET tool that we built so anyone can browse and analyze our creative commons data via standard SQL, at [data.stackexchange.com](http://data.stackexchange.com/). So if you're looking for a highly flexible, general front end to a bunch of SQL data, SEDE is your huckleberry. For more, [see the blog entries we wrote about it](http://www.google.com/search?q=site%3Ablog.stackoverflow.com+stack+exchange+data+explorer).



## [Protobuf-net](http://code.google.com/p/protobuf-net/)



This is technically something [Marc Gravell](http://blog.stackoverflow.com/2010/06/welcome-stack-overflow-valued-associates-00006-and-00007/) created before he joined Stack Exchange, but we use protobuf-net _extensively_ (and AFAIK exclusively) for high performance, compact serialization of .NET objects before storing them -- and I daresay that our heavy use has driven the current version of Protobuf-net to be at least 3x as awesome as it would otherwise be. I don't think you'll find a faster and more elegant .NET serialization library in the world.



## [ServiceStack.Text](https://github.com/ServiceStack/ServiceStack.Text)



This is part of [Demis Bellot's](http://blog.stackoverflow.com/2011/08/welcome-valued-associate-demis-bellot/) excellent open source [Service Stack](http://www.servicestack.net/) REST web service framework. And again, something that he created before he joined us at Stack Exchange. We switched to ServiceStack.Text for all our .NET JSON serialization duties a while ago because it was _blindingly_ fast, [much faster than any other JSON serializer we could find for .NET](http://theburningmonk.com/2011/08/performance-test-json-serializers/). All of Demis' open source work is of similarly high quality.

And that's not all! There are **a few more awesome bits of our infrastructure we'll be open sourcing later this year**, and someone (sadly, [not me](http://www.codinghorror.com/blog/2012/02/farewell-stack-exchange.html)) will update this post to include them too.

If any of this looks useful or interesting, please check it out! And if you have the time or inclination, contribute patches and forks back to the greater community. I know we will!

