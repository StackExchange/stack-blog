---
author: jeffatwood
comments: true
date: 2010-06-13 12:05:19+00:00
layout: post
redirect_from: /2010/06/introducing-stack-exchange-data-explorer
hero: 
slug: introducing-stack-exchange-data-explorer
title: Introducing Stack Exchange Data Explorer
wordpress_id: 3645
tags:
- company
- announcement
- cc-wiki-dump
- community
---


Everything contributed to the Stack Exchange network of websites is licensed under [Creative Commons Attribution - Share Alike](http://creativecommons.org/licenses/by-sa/2.5/). This means it belongs to _everyone_, and can be freely reused (even commercially!), so long as it is follows [our simple rules of attribution](http://blog.stackoverflow.com/2009/06/attribution-required/). That's our contract with the community -- it's _your_ generously contributed content that makes these websites worth visiting in the first place! 



Thus, we [provide dumps of all the public data](http://blog.stackoverflow.com/category/cc-wiki-dump/) in the current Stack Exchange network (Stack Overflow, Server Fault, Super User, and Meta) every month, like clockwork.



But if you just want to play with the data, it's kind of tedious: you have to download the entire 700 plus megabyte archive, import it into some kind of database system -- and only then can you even _begin_ thinking about how to query out the results you're looking for.



Well, I'm pleased to announce that we now officially support **a web tool for sharing, querying, and analyzing the Creative Commons data from every website in the Stack Exchange network** -- the [Stack Exchange Data Explorer](http://odata.stackexchange.com/).



[![](https://i.stack.imgur.com/pdN7x.png)](http://odata.stackexchange.com/)



The Stack Exchange Data Explorer, or SEDE:







  1. provides easy web-based access to the latest and greatest monthly Stack Exchange website data dumps*

  2. gives us an [Open Data Protocol](http://www.odata.org/) (odata) endpoint

  3. allows testing, running, editing and _permalinking_ to public queries against our corpus of data with a simple, syntax-highlighted web UI

  4. can be used as a permanently linkable tool for teaching general SQL and relational database concepts -- we can be our own [Northwind](http://msdn.microsoft.com/en-us/library/aa276825(SQL.80).aspx) or [Pubs](http://msdn.microsoft.com/en-us/library/aa238305(SQL.80).aspx) database, when answering questions tagged [sql]!

  5. hosted on [Windows Azure](http://www.microsoft.com/windowsazure/windowsazure/) so it's speedy, scalable, and always available (and did I mention, generously sponsored by Microsoft?) 

  6. built from the same ASP.NET MVC software stack as our own engine, and will be open-sourced so others can learn from the code




We've been working with [Sam Saffron](http://stackoverflow.com/users/17174/sam-saffron) to build this out, and even though this is only a public beta, it's already amazing! But don't take my word for it -- check out the **Stack Exchange Data Explorer** yourself at ...





## [http://odata.stackexchange.com](http://odata.stackexchange.com/)





... and leave any beta feedback [in the [data-explorer] tag on meta](http://meta.stackoverflow.com/questions/tagged/data-explorer).



**The ultimate goal of all of our sites is learning, and making the Internet a _slightly_ better place.** I believe the SEDE achieves both of these goals in a rather serendipitous way -- it helps us teach SQL and relational databases by querying the very posts we're creating as we teach! Yes, maybe it's a little geeky, but it is magical to me.



* we are looking at eventually making special weekly or biweekly dumps for SEDE

