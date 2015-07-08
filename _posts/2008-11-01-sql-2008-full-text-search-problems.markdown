---
author: jeffatwood
comments: true
date: 2008-11-01 21:11:53+00:00
layout: post
redirect_from: /2008/11/sql-2008-full-text-search-problems
slug: sql-2008-full-text-search-problems
title: SQL 2008 Full-Text Search Problems
wordpress_id: 145
tags:
- company
- server
---


You may have noticed that things have been less responsive than usual on stackoverflow.com. The culprit is SQL Server 2008 full-text search. I'll let [Brent](http://www.brentozar.com/) explain:





>
**Before 2008, full text search wasn't inside the database - it wasn't subject to things like transactions.**  Heck, it was more like Lucene where it lived outside on its own.  Now, it's stored inside data files and it's subject to transactions.  From what I'm hearing, blocking and locking is a completely new issue in 2008 FTS.  There's a big overhead involved with making it subject to transactions.

> 
> 
In most environments, you don't see full text being used for transactions.  At StackOverflow, you're doing heavy transactional activity on the same fields that you're doing analytical, many-record selects.

> 
> 
If you do a full text search on Revisions and you include a common keyword like, say, SQL, you're going to match tens of thousands of records.  When I look at the query plans for these, I'm seeing 50-100k reads.  Doing that inside a table that's also getting heavy inserts - boom, transactional disaster.






**We rely _heavily_ on full-text search on stackoverflow.com**, which worked amazingly well for us under SQL Server 2005. Looks like that's no longer the case for SQL Server 2008, unfortunately.



Brent is following up with the SQL Server team on this, and they have a copy of our database to test against. (Brent has given so incredibly generously of his time on the database front that I'm adding him to the stackoverflow.com virtual team -- he'll get a place on the About page with the rest of the team.) Based on the stunningly poor SQL Server 2008 full text results so far, and the apparent architecture changes, I'm pessimistic that the SQL team will be able to do anything for us.



We had always planned to move to [lucene.net](http://incubator.apache.org/lucene.net/) in the future; looks like we'll need to move that timetable up aggressively. I'll see what I can do over the weekend to make that happen.

