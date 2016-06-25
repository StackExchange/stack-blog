---
layout: post
title: Learn more about your site with the SE Data Explorer. Here's how!
author: stackpops
date: 2016-06-24 00:00:00
description: The Stack Exchange Data Explorer is a great way to get information about your favorite SE site. Learn how to harness it with our new tutorial!
tags:
 - company
 - announcement
 - community
 - stackexchange
---
Have you ever wanted to get a statistic about your favorite Stack Exchange site, but been baffled by exactly how to do that? [The Stack Exchange Data Explorer](http://data.stackexchange.com) (SEDE) may be just what you're looking for. SEDE [was created to make it easy to query and browse the public data](https://blog.stackoverflow.com/2010/06/introducing-stack-exchange-data-explorer/) that we release periodically for all Stack Exchange sites, but a lack of familiarity with SQL has been a barrier to many of you who would otherwise benefit from it. Now, thanks to friend of the company and moderator extraordinare [Monica Cellio](http://stackexchange.com/users/505925/monica-cellio), you have [a tutorial](http://data.stackexchange.com/tutorial) to guide you in using it!

[![SEDE tutorial screenshot][screenshotURL]](http://data.stackexchange.com/tutorial)

For the past several months, Monica&#8212;who writes documentation for programmers at her day job, and even holds [a tag badge in technical-writing on Writers SE](http://writers.stackexchange.com/help/badges/87/technical-writing?userid=1993)&#8212;has been spending some of her free time putting together a tutorial for people who are completely new to the Data Explorer or SQL. Thanks to her efforts, and those of another awesome community member, [Tim Stone](http://stackexchange.com/users/152015/tim-stone), the _de facto_ maintainer of SEDE (and the [SE election stats page](http://elections.stackexchange.com/)), version 1.0 is finally live!

This new tutorial introduces the basic concepts of relational databases, and teaches the fundamental SQL statements that go with them. Examples all use the design of the actual Stack Exchange databases. And for those who find themselves getting really interested, digging into more advanced queries and having some trouble, well, there's [a great place nearby to get help](http://stackoverflow.com/questions/tagged/tsql).

##About the Stack Exchange Data Explorer

In keeping with our founding principles, all user-contributed posts are always [available for reuse with minimal restrictions](http://blog.stackoverflow.com/2009/06/attribution-required/), and we even package up ["data dumps"](https://archive.org/details/stackexchange) of all the content on Stack Exchange regularly for researchers and others who want to work with large chunks of the content. 

Of course, not everyone has the time or expertise to download massive data dumps and then install SQL locally or write custom code to get what they want. So we also provide a web UI to the same information: the Data Explorer. It's essentially a publicly accessible copy of the databases behind the SE Q&A sites. It gets updated weekly with all the latest changes, minus a few sensitive things like users' e-mail addresses and voting behavior.

People have mined [all sorts of interesting information](http://meta.stackexchange.com/questions/49943/interesting-queries-on-data-explorer) out of SEDE. Ever been curious how much reputation you would have if the 200-points-per-day rep cap didn't exist? Or wondered how true someone's claim that "downvoters are ruining everything" really is? Maybe you have an idea for a new badge, and want to see how many people would meet its criteria before you propose it on meta. For all of these situations, SEDE is the answer.

But even though SEDE is nicer to work with than a raw data dump, it can still be pretty intimidating to new users, especially those who aren't trained database engineers. Up until now, the Data Explorer's own help docs have been a little thin, and mostly covered very specialized, advanced features. We've wanted to expand the guidance there for a while, but never quite got around to it. Then Monica rewarded our procrastination by helpfully volunteering to take on the writing.

So please check it out, try your hand at answering that question you've always had about your favorite site but never knew who to ask, and let us know what you think on meta. And again, a big thank-you to Monica and Tim for their work in creating this great guide!


 [screenshotURL]: http://i.stack.imgur.com/Ui7pQ.png
