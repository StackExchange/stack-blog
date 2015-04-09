---
author: jeffatwood
comments: true
date: 2008-10-29 00:21:19+00:00
layout: post
redirect_from: /2008/10/adde-a-second-server
slug: adde-a-second-server
title: Added a Second Server
wordpress_id: 143
tags:
- company
- server
---


Based on traffic levels last week -- we're at and beyond [where we were at launch](http://blog.stackoverflow.com/2008/09/then-a-miracle-occurs-public-beta/) -- I decided it was time to pursue adding a second server.



The second stackoverflow.com server has [identical specifications to our first server](http://blog.stackoverflow.com/2008/04/our-dedicated-server/), that is:







  * Windows Server 2008 x64

  * Dual Quad-Core Xeon E5320 (1.8 GHz)

  * 4 GB RAM

  * 271GB SAS hard drive





As I've mentioned before, one of the most obvious scaling strategies for us is to move the database to its own, private server. We were thinking about upgrading to SQL Server 2008, so this was also a logical time to do that.



As of Sunday night, **stackoverflow.com is now a two-server system: web on one server, database on the other**. They are connected to each other through a dedicated crossover gigabit ethernet connection.



I have to give massive credit to [Brent Ozar](http://www.brentozar.com/) here, who not only helped us tune the database, but also contributed a _huge_ chunk of his own time. Brent wrote a [blog post about his experience working with the Stack Overflow databases](http://www.brentozar.com/archive/2008/10/sql-2008-upgrade-tuning-for-stackoverflowcom/), if you're curious. Brent works for [Quest Software](http://www.quest.com/) and he is, without a doubt, a _database ninja_. So if you have any difficult SQL Server problems -- or in our case, blazingly obvious newbie problems -- maybe you should check out Brent's [SQL Server wiki](http://sqlserverpedia.com/wiki ).



While many queries are faster under SQL Server 2008, and the tooling is dramatically and indisputably better (intellisense for queries!), there is one downside for us: **SQL Server 2008 is slower at full-text search operations than SQL 2005**. That's kind of a bummer because we rely heavily on full text. I saw a glimpse of this in my initial testing, when I had both servers up side-by-side with the same data, running the same queries, to see how much faster it would be (new versions _are_ supposed to be faster, right?). My experiments showed that any full-text queries I tried were inexplicably slower on 2008, but we thought it had to do with different query plans, and was something we could work around.



Turns out we were wrong. Apparently SQL Server 2008 was the source of the massive slowdown earlier today. A set of full-text queries that _ran fine all last week on a single, shared server_ caused a newly dedicated 8 CPU, 4 GB server to completely melt down and peg at 100%. Traffic levels were about the same, the database was about the same, and the code hasn't changed much. Not to mention the whole "newly dedicated database server", so you'd expect performance to be better, not worse.



We're not the first people to notice that [full text performance took a step backwards in SQL 2008](http://sqldev.wordpress.com/2008/09/16/sql-server-2008-full-text-slowness/):





<blockquote>
I was lucky enough to visit Microsoft during the CTP period and was testing out integrated full text search in 2008. An issue we experienced was that full text can be slow when there is a high number of updates to the index and is caused by blocking on the docidfilter internal table. 
</blockquote>





That post mentions the `DBCC TRACEON (7646, -1)` flag. We've enabled this flag and restarted SQL Server, but haven't seen much improvement.



The temporary workaround is much more aggressive caching, including caching to disk. Caching is the bread and butter of computer science, and any opportunity to cache smarter and.. er.. harder.. is a good thing. But all things considered, I'd still prefer it if SQL 2008 was delivering _better_ full-text performance than 2005, not _worse_.

