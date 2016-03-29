---
layout: post
title: "Stack Overflow: The Architecture - 2016 Edition"
author: nickcraver
date: 2016-02-17
hero: 
source: https://nickcraver.com/blog/2016/02/17/stack-overflow-the-architecture-2016-edition/
description: The first in a long series of posts on Stack Overflow’s architecture.
tags: 
- engineering
---

To get an idea of what all of this stuff "does," let me start off with an update on the average day at Stack Overflow. So you can compare to the [previous numbers from November 2013](https://nickcraver.com/blog/2013/11/22/what-it-takes-to-run-stack-overflow/}), here's a day of statistics from February 9th, 2016 with differences since November 12th, 2013:

- **209,420,973** <span style="opacity:0.8">(+61,336,090)</span> HTTP requests to our load balancer
- **66,294,789** <span style="opacity:0.8">(+30,199,477)</span> of those were page loads
- **1,240,266,346,053** <span style="opacity:0.8">(+406,273,363,426)</span> bytes (1.24 TB) of HTTP traffic sent
- **569,449,470,023** <span style="opacity:0.8">(+282,874,825,991)</span> bytes (569 GB) total received
- **3,084,303,599,266** <span style="opacity:0.8">(+1,958,311,041,954)</span> bytes (3.08 TB) total sent
- **504,816,843** <span style="opacity:0.8">(+170,244,740)</span> SQL Queries (from HTTP requests alone)
- **5,831,683,114** <span style="opacity:0.8">(+5,418,818,063)</span> Redis hits
- **17,158,874** <span style="opacity:0.8">(not tracked in 2013)</span> Elastic searches
- **3,661,134** <span style="opacity:0.8">(+57,716)</span> Tag Engine requests
- **607,073,066** <span style="opacity:0.8">(+48,848,481)</span> ms (168 hours) spent running SQL queries
- **10,396,073** <span style="opacity:0.8">(-88,950,843)</span> ms (2.8 hours) spent on Redis hits
- **147,018,571** <span style="opacity:0.8">(+14,634,512)</span> ms (40.8 hours) spent on Tag Engine requests
- **1,609,944,301** <span style="opacity:0.8">(-1,118,232,744)</span> ms (447 hours) spent processing in ASP.Net
- **22.71** <span style="opacity:0.8">(-5.29)</span> ms average (19.12 ms in ASP.Net) for 49,180,275 question page renders 
- **11.80** <span style="opacity:0.8">(-53.2)</span> ms average (8.81 ms in ASP.Net) for 6,370,076 home page renders 

You may be wondering about the drastic ASP.Net reduction in processing time compared to 2013 (which was 757 hours) despite 61 million more requests a day. That's due to both [a hardware upgrade in early 2015](http://blog.serverfault.com/2015/03/05/how-we-upgrade-a-live-data-center/) as well as a lot of performance tuning inside the applications themselves. Please don't forget: [performance is still a feature](http://www.codinghorror.com/blog/2011/06/performance-is-a-feature.html). If you're curious about more hardware specifics than I'm about to provide---fear not. The next post will be an appendix with detailed hardware specs for all of the servers that run the sites (I'll update this with a link when it's live).

Read the rest of [Stack Overflow: The Architecture - 2016 Edition on Nick's blog here](https://nickcraver.com/blog/2016/02/17/stack-overflow-the-architecture-2016-edition/). It's the start of an [extensive series](https://nickcraver.com/blog/2016/02/03/stack-overflow-a-technical-deconstruction/) of blog posts on Stack Overflow’s technical architecture.
