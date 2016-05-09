---
author: jeffatwood
comments: true
date: 2011-01-28 07:59:21+00:00
layout: post
redirect_from: /2011/01/stack-overflow-search-now-81-less-crappy
hero: 
slug: stack-overflow-search-now-81-less-crappy
title: Stack Overflow Search -- Now 81% Less Crappy
wordpress_id: 7041
tags:
- company
- serverfault.com
- stackexchange
- superuser.com
- community
---

Google has ruined search for everyone. 

By that I mean they have done it so long, so fast, and so well -- despite the [recent speed bump](http://googleblog.blogspot.com/2011/01/google-search-and-search-engine-spam.html) -- that **users simply expect _everyone's_ search to be as good as Google's**. And that is ... challenging. Particularly considering Google is an enormous company now, with server farms roughly the size of the state of Pennsylvania.

How's a little startup supposed to compete with that? Or should we even try to, really? From the beginning, Joel and I said that [the _de facto_ Stack Overflow home page was a web search](http://blog.stackoverflow.com/2010/10/search-all-stack-exchange-sites/). So why, exactly, do we need to dump tons of engineering resources into creating a super-uber-mega excellent search facility, again?

That's why we relied on SQL Server to provide our internal full-text search for the last two years, and it's been mostly adequate. We did refine it over time to focus on its strengths -- namely, custom searches with specific metadata attributes that search engines can't see:





  * [Stack Overflow Search – Now 51% Less Crappy](http://blog.stackoverflow.com/2008/10/stack-overflow-search-now-51-less-crappy/)

  * [Stack Overflow Search – Now 61% Less Crappy](http://blog.stackoverflow.com/2009/07/stack-overflow-search-now-61-less-crappy/)


Although our de-crapifying efforts have been noble and heroic (well, in my mind, anyway), we've clearly begun to exceed the scope and scale of what SQL Server search can do for us. 

That's why I'm pleased to announce that as of today, we have switched all of our search functionality network wide from SQL Server to [Lucene](http://lucene.apache.org/java/docs/index.html), or more specifically, the [Lucene.NET](http://lucene.apache.org/lucene.net/) flavor.

[![](https://i.stack.imgur.com/SP82G.png)](http://lucene.apache.org/java/docs/index.html)

(We are, however, a little concerned that [Lucene.NET was dropped by the Apache Incubator](http://search-lucene.com/m/nMTuR1pPJbq). We'd like to see what we can do to help the project stay vital and in sync with the master Lucene project. Let us know how we can best do that!)

There were a couple factors motivating this change:





  1. **Take advantage of our web farm.** Right now [our server farm](http://blog.serverfault.com/post/1432571770/) has ten fairly beefy, modern web servers with 16 GB memory each that are ... pretty much doing nothing most of the time. We are almost comically overprovisioned. With Lucene, we can create an index on each webserver and have the "heavy lifting" of actually searching the index distributed across those 10 webservers instead of a single big iron database.


  2. **Reduce load on the database**. Our database is plenty busy enough without adding demanding full-text searching chores to its many duties. This gives us more headroom on the database tier for plain vanilla SQL calls, and we can optimize for that rather than having to split our efforts between "what's good for a full text query" and "what's good for a SQL query."


  3. **Better control of search results**. Full text support in SQL Server has improved mightily in 2008 and beyond, but it is still a bit of an odd duck in the way it integrates with typical SQL queries and sometimes the interactions can be ... unexpected. There's also not a lot of control over how it works its magic. Lucene, on the other hand, is an _extremely_ mature project with tons of options and lots of ways to tweak your searches -- as well as entire shelves of books written about the underlying technology.


  4. **No external search service dependency.** Because Lucene.NET is C# code, it is fully integrated into our codebase. It is not an external service we have to communicate with and set up; we control it all directly through our C# code. In fact, all we had to do to deploy is create a local folder on each server to hold the indexes.



Kudos to [Nick Craver](http://blog.stackoverflow.com/2011/01/welcome-valued-associate-nick-craver/), one of our newest Valued Associatestm, for getting this major improvement rolled out. While we're still tweaking a bit, we are very pleased with the **improved relevancy** and **greater search speed** across the network. Our internal page benchmarks show us that search times went down from a highly variable average of 3 seconds to a fairly consistent 600 milliseconds.

Please try out our new, improved search on your favorite [Stack Exchange site](http://stackexchange.com/sites) and let us know what you think. Just look for the ubiquitous search box in the upper right hand corner of every site; type what you want to find and press Enter.

![](/images/wordpress/unix-linux-search-box.png)

Remember that search drives three areas of the site:





  * The search results (obviously)

  * The related questions in the sidebar of each question

  * The related questions on the ask page when you enter a title


Oh, and if you want to **search all [Stack Exchange sites](http://stackexchange.com/sites) at once** -- well, that's not something Lucene can do for us quite yet, but it's easy.



[![stack exchange search all sites](https://i.stack.imgur.com/HnIUW.png)](http://stackexchange.com)



Just visit [stackexchange.com](http://stackexchange.com/) and take advantage of the search box there.

