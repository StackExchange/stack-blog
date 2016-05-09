---
author: jeffatwood
comments: true
date: 2010-12-13 11:11:36+00:00
layout: post
redirect_from: /2010/12/re-launching-stack-exchange-data-explorer
hero: 
slug: re-launching-stack-exchange-data-explorer
title: Re-Launching Stack Exchange Data Explorer
wordpress_id: 6336
tags:
- company
- cc-wiki-dump
- community
- stackexchange
---

Since we [launched the Stack Exchange Data Explorer](http://blog.stackoverflow.com/2010/06/introducing-stack-exchange-data-explorer/) in June, we've been actively maintaining it and making small improvements to it. But there is one **big** change -- as of today, the site has permanently moved from odata.stackexchange.com to



## [data.stackexchange.com](http://data.stackexchange.com/)



[![](https://i.stack.imgur.com/xoL7d.png)](http://data.stackexchange.com/)

If you're wondering what the heck this thing is, do [read the introductory blog post](http://blog.stackoverflow.com/2010/06/introducing-stack-exchange-data-explorer/), but in summary:



<blockquote>
Stack Exchange Data Explorer is <strong>a web tool for sharing, querying, and analyzing the Creative Commons data from every website in the Stack Exchange network</strong>. It's also useful as for learning SQL and sharing SQL queries as a 'reference database'.
</blockquote>



We are redirecting all old links to the new path, so everything should work as before. Why did we make this change?

Mostly because we decided to move off the [Windows Azure](http://www.microsoft.com/windowsazure/windowsazure/) platform. While Microsoft generously offered us free Azure hosting in exchange for [odata](http://www.odata.org/) support and a small "runs on Azure" logo in the footer, it ultimately did not offer the level of control that we needed. I'll let Sam Saffron, the principal developer of SEDE, explain:



>

> 
> ## Teething issues
> 
> 

>
When we first started working with Azure, tooling was very rough. Tooling for Visual Studio and .NET 4.0 support only appeared a month after we started development. [Remote access to Azure instances](http://msdn.microsoft.com/en-us/library/gg443832.aspx) was only granted a few weeks ago together with the ability to run non-user processes.

>
There are still plenty of teething issues left, for example: on the SQL Azure side we can't run cross database queries, add full-text indexes or backup our dbs using the `BACKUP` command. I am sure these will eventually be worked out. There's also the 30 minute deploy cycle. Found a typo on the website? Correcting it is going to take 30 minutes, minimum.

>
Due to many of these teething issues, debugging problems with our Azure instances quickly became a nightmare. I spent days trying to work out why we were having uptime issues, which since have been mostly sorted.

>
It is important to note that these issues are by no means specific to Azure; **similar teething issues affect other Platform-As-A-Service providers** such as [Google App Engine](http://aralbalkan.com/1504) and [Heroku](http://heroku.com/). When you are using a PAAS you are giving up a lot of control to the service provider. The service provider chooses which applications you can run and imposes a series of restrictions.


> 
> ## The life cycle of a data dump
> 
> 

>
Whenever there is a new data dump, I would log on to my Rackspace instance, download the data dump, decompress it, rename a bunch of folders, run [my database importer](https://github.com/SamSaffron/So-Slow), and wait an hour for it to load. If there were any new sites, I would open up a SQL window and hack that into the DB. This process was time consuming and fairly tricky to automate. It could be automated, but it would require lots of work from our side.

>
Now that we migrated to servers we control, the process is almost simple -- all we do is select a bunch of data from export views (containing public data) and insert them into a fresh DB. We are not stuck coordinating work between 4 machines across 3 different geographical locations.


> 
> ## Did I mention we are control freaks?
> 
> 

>
At Stack Overflow [we take pride in our servers](http://blog.serverfault.com/). We spend weeks tweaking our hardware and software to ensure we get the best performance and in turn you, the end user, get the most awesome experience.

>
It was disorienting moving to a platform where we had no idea what kind of hardware was running our app. Giving up control of basic tools and processes we use to tune our environment was extremely painful.



We thank Microsoft for letting us try out Azure; based on our experience, we've given them a bunch of hopefully constructive feedback. In the long run, we think a self-hosted solution will be much simpler for us to maintain, tune and automate. 

There's also few other bits (nibbles?) of data news:





  * We **won't be producing a data dump for the month of December 2010**, but you can definitely expect one just after the new year. We apologize for the delay.

  * SEDE will continue to be updated monthly as a matter of policy to keep it in sync with the monthly data dumps.


Remember, [SEDE is fully open source](http://blog.stackoverflow.com/2010/06/stack-exchange-data-explorer-open-sourced/), so if you want to help us hack on it, please do!



## [code.google.com/p/stack-exchange-data-explorer](http://code.google.com/p/stack-exchange-data-explorer/)



And as usual, if you have any bugs or feedback for us, leave it in [in the [data-explorer] tag on meta](http://meta.stackoverflow.com/questions/tagged/data-explorer), too.
