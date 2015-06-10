---
author: david
comments: true
date: 2014-01-23 19:05:13+00:00
layout: post
redirect_from: /2014/01/stack-exchange-cc-data-now-hosted-by-the-internet-archive
slug: stack-exchange-cc-data-now-hosted-by-the-internet-archive
title: Stack Exchange Creative Commons data now hosted by the Internet Archive
wordpress_id: 14382
tags:
- company
- cc-wiki-dump
- announcements
- community
---
We’ve been publishing an [anonymized dump of all user-contributed Stack Exchange content](http://blog.stackoverflow.com/2009/06/stack-overflow-creative-commons-data-dump/) since 2009. Unfortunately, at the end of last year our former host, ClearBits, permanently shut down. So we set out to look for a new home for our data dumps, and today we’re happy to announce that the Internet Archive has agreed to host them:




### [The Stack Exchange Data Dump at the Internet Archive](https://archive.org/details/stackexchange)




We’ve been big fans of the Internet Archive for a long time, and we’re really happy to be working with them on this.




## Wait, what’s this data dump?




All community-contributed content on Stack Exchange is licensed under the [Creative Commons BY-SA 3.0 license](http://creativecommons.org/licenses/by-sa/3.0/). As part of our commitment to that, we release a quarterly dump of all user-contributed data (after carefully sanitizing it to protect user private data, of course).




Each site can be downloaded individually, and includes an archive with Posts, Users, Votes, Comments, Badges, PostHistory, and PostLinks (new). You’re free (and encouraged!) to share, remix, analyze and build on top of this data any way you want, as long as you follow the attribution requirements.




## What are the attribution requirements?




In keeping with the spirit of sharing and proper attribution, and as the “attribution” part of the CC BY-SA license, we require that you do the following when you use the data:

	
1. Visually indicate that the content is from the Stack Exchange network

2. Link back to the original source question or answer

3. Display the author names for each question and answer you show

4. Link back to the author’s user page

Those links should be ordinary hyperlinks directly to the Stack Exchange site, without “nofollow” or any obfuscation or redirection tricks plainly visible on the page (we’re looking at you, content farms).




## I’m too lazy to download this giant zip file. Can’t I just play with it online?




You’re in luck! We also make the data available through the [Stack Exchange Data Explorer](http://data.stackexchange.com/) (an [open-source project](https://code.google.com/p/stack-exchange-data-explorer/) maintained by community member [Tim Stone](http://stackoverflow.com/users/366234/tim-stone)) which lets you run SQL queries directly against a copy of the data. It’s updated weekly, and includes some data that’s not in the data dumps in order to keep the size of the downloads reasonable.




If you want to access the data programmatically, we also have a pretty expansive [JSON API](http://api.stackexchange.com/) that returns similar data to the dumps (but updated in real time with the websites). If you need help, we have [a whole site for people developing apps on top of the API](http://stackapps.com/?tab=active).




So take our data for a spin! We love seeing what people create with it, from [apps](http://stackapps.com/?tab=apps) to [research papers](http://www.cc.gatech.edu/~vector/papers/CrowdDoc-GIT-CS-12-05.pdf) or even [machine learning contests](http://www.kaggle.com/c/facebook-recruiting-iii-keyword-extraction). Making this data easily accessible is just our way of giving back to the community that has made Stack Exchange so successful.
