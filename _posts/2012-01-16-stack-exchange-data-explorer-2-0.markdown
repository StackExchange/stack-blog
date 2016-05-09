---
author: sam
comments: true
date: 2012-01-16 04:39:13+00:00
layout: post
redirect_from: /2012/01/stack-exchange-data-explorer-2-0
hero: 
slug: stack-exchange-data-explorer-2-0
title: 'Stack Exchange Data Explorer 2.0 '
wordpress_id: 10782
tags:
- company
- cc-wiki-dump
- community
---

It has been a year and a half since we launched [Data Explorer](http://blog.stackoverflow.com/2010/06/introducing-stack-exchange-data-explorer/). In the past few months [Tim Stone](http://meta.stackoverflow.com/users/150235/tim-stone)  (on a community grant) and I have pushed a major round of changes. Thanks Tim!

 

### Recap on last years changes



Since we publicly launched data explorer, the most notable change contributed back from the community was support for [query plans](http://meta.stackoverflow.com/questions/78050/data-explorer-merge-request-execution-plans), big thanks to [Justin](http://meta.stackoverflow.com/users/136084/justin) for submitting the patch.

We also added quite a few bug fixes/features, mostly around merging users. Some features were added to defend data.se against an onslaught of public queries. A few features were added to support non Stack Exchange data dumps, most notably a system for white listing. Our very own [Rebecca Chernoff](http://blog.stackoverflow.com/2011/01/welcome-valued-associate-rebecca-chernoff/) ported Data Explorer to ASP.NET MVC3 amongst many other fixes.

The current round of changes offers some very cool new functionality, which is worth listing:



### Query revisions



When we created Data Explorer there was no way to track a query's "lineage". This was particularly problematic because we had no way of updating featured queries or shared queries. Even I [complained about this](http://meta.stackoverflow.com/questions/108623/saving-and-editing-queries-on-data-explorer-is-giving-me-a-headache) on meta.

The new pipeline works just like [Gist](https://gist.github.com/), you can track the history of your query as you are editing (attributing the various editors along the way):



[![](https://i.stack.imgur.com/hOhnY.png)](http://data.stackexchange.com/stackoverflow/query/6772/stackoverflow-rank-and-percentile)
![](/images/wordpress/fork2.png)



You can link to a specific revision, or simply share a "query set" by using the permalink. By sharing a "query set" you can later on fix up any issues the query has, without needing to update [the link](http://data.stackexchange.com/stackoverflow/query/6772/stackoverflow-rank-and-percentile). The new pipeline allows you to "fork" any query created by other users and tracks attribution along the way.



### Graphs



We added some basic graphing facilities, supporting 2 types of line graphs:

The first type is a simple graph, where the first column represents the X-axis and the other columns the data points. For example: [a graph of questions and answers per month](http://data.stackexchange.com/stackoverflow/query/59302/questions-and-answers-per-month).

The second type is a bit trickier, it unpivots the second column in the result set. For example: [a graph of questions per tag for top 10 tags](http://data.stackexchange.com/stackoverflow/query/59301/questions-per-month-top-10-tags-compared).

![](/images/wordpress/graph-300x168.png)



### Huge open source upgrade



Data Explorer consumes a fair amount of open source libraries. In the past year and a half many have evolved. We took the time to upgrade them all.

The excellent [Code Mirror](http://codemirror.net/) was updated to the 2.0 version, the new version no longer uses messy iframes. Marjin wrote a [great post](http://codemirror.net/doc/internals.html) explaining the changes, a fantastic read for any JavaScript developers.

[SlickGrid](https://github.com/mleibman/SlickGrid), which in my opinion is the best grid control built on jQuery, was upgraded to [version infinity](http://www.codinghorror.com/blog/2011/05/the-infinite-version.html).



### 100% more Dapper



[Dapper](http://code.google.com/p/dapper-dot-net/) our open source micro ORM is the only ORM Data Explorer uses. We took the time to port the entire solution to Dapper. I even added a few CRUD helpers so you are not stuck hard coding INSERT and UPDATE statements everywhere.

Data Explorer is a good [open source example](http://code.google.com/p/stack-exchange-data-explorer/) of how we code web sites at Stack Overflow. It is built on our stack using many of our helpers. Dapper and related helpers are used for data access. It uses the same homebrew migration system we use in production and an interesting asset packaging system I wrote (for the record, [Ben](https://twitter.com/#!/balpha) wrote a much more awesome one that we use in production, lobby him to get it blogged). It also uses [MiniProfiler](http://code.google.com/p/mvc-mini-profiler/) for profiling. MiniProfiler is even enabled in production, so go have a play.



### Lots of smaller less notable fixes







  * We now have a concept of "user preferences", so we can remember which tab you selected, etc. 


  * We remember the page you were at and try to redirect you there after you log on. 


  * We attribute the query properly to the creator / editor from the query show page. 


  * You can page through your queries on your user page. 


  * Support for arbitrary hyperlinks


  * Revamped object browser, you can collapse table definitions


  * Lots of other stuff I forgot :) 





### You too can run Data Explorer



At Stack Exchange we run 3 different instances of Data Explorer. We have the public [Data Explorer](http://data.stackexchange.com) and a couple of private instances we use to explore other data sets. The first private instance is used for raw site database access. The other is used to browse through our [haproxy logs](http://haproxy.1wt.eu/).

There is nothing forcing you to point [Data Explorer](http://code.google.com/p/stack-exchange-data-explorer/) at a Stack Exchange data dump, the vast majority of the features work fine pointed at an arbitrary database.

Hope you enjoy this round of changes.

If there are any bugs or feature requests please post them to [Meta Stack Overflow](http://meta.stackoverflow.com). Data Explorer is open source, patches welcome.

