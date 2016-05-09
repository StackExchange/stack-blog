---
layout: post
title: "Stack Overflow: How We Do Deployment - 2016 Edition"
author: nickcraver
date: 2016-05-03
hero: 
source: https://nickcraver.com/blog/2016/05/03/stack-overflow-how-we-do-deployment-2016-edition/
description: The third in a long series of posts on Stack Overflow’s architecture explaining how we deploy code.
tags: 
- engineering
---

We've talked about [Stack Overflow's architecture](https://nickcraver.com/blog/2016/02/17/stack-overflow-the-architecture-2016-edition/) and [the hardware behind it](https://nickcraver.com/blog/2016/03/29/stack-overflow-the-hardware-2016-edition/). The next [most requested topic](https://trello.com/b/0zgQjktX/blog-post-queue-for-stack-overflow-topics) was Deployment. How do we get code a developer (or some random stranger) writes into production? Let's break it down. Keep in mind that we're talking about deploying Stack Overflow for the example, but most of our projects follow almost an identical pattern to deploy a website or a service.

#### Source
This is our starting point for this article. We have the Stack Overflow repository on a developer’s machine. For the sake of discussing the process, let’s say they added a column to a database table and the corresponding property to the C# object — that way we can dig into how database migrations work along the way.

#### A Little Context
We deploy roughly 25 times per day to development (our CI build) just for Stack Overflow Q&A. Other projects also push many times. We deploy to production about 5-10 times on a typical day. A deploy from first push to full deploy is under 9 minutes (2:15 for dev, 2:40 for meta, and 3:20 for all sites). We have roughly 15 people pushing to the repository...


Read the rest of [Stack Overflow: How We Do Deployment - 2016 Edition on Nick's blog here](https://nickcraver.com/blog/2016/05/03/stack-overflow-how-we-do-deployment-2016-edition/). It's the second in an [extensive series](https://nickcraver.com/blog/2016/02/03/stack-overflow-a-technical-deconstruction/) of blog posts on Stack Overflow’s technical architecture.