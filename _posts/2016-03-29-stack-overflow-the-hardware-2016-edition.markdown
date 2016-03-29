---
layout: post
title: "Stack Overflow: The Hardware - 2016 Edition"
author: nickcraver
date: 2016-03-29
hero: 
source: https://nickcraver.com/blog/2016/03/29/stack-overflow-the-hardware-2016-edition/
description: The second in a long series of posts on Stack Overflow’s architecture.
tags: 
- engineering
---

Who loves hardware? Well, I do. If you *don't* love hardware then I'd go ahead and close the browser.

Still here? Awesome. Or your browser is crazy slow, in which case you should think about some new hardware.

I've repeated many, *many* times: **[performance is a feature](http://blog.codinghorror.com/performance-is-a-feature/)**. Since your code is only as fast as the hardware it runs on, the hardware definitely matters. Just like any other platform, Stack Overflow's architecture comes in layers. Hardware is the foundation layer for us, and having it in-house affords us many luxuries not available in other scenarios...like running on someone else’s servers. It also comes with direct and indirect costs. But that's not the point of this post, [that comparison will come later](https://trello.com/c/4e6TOnA7/87-on-prem-vs-aws-azure-etc-why-the-cloud-isn-t-for-us). For now, I want to provide a detailed inventory of our infrastructure for reference and comparison purposes. And pictures of servers. Sometimes naked servers. This web page could have loaded much faster, but I couldn't help myself.

In many posts through this series I will give a lot of numbers and specs. When I say "our SQL server utilization is almost always at 5--10% CPU," well, that's great. But, 5--10% *of what?* That's when we need a point of reference. This hardware list is meant to both answer those questions and serve as a source for comparison when looking at other platforms and what utilization may look like there, how much capacity to compare to, etc.

## How We Do Hardware

Disclaimer: I don't do this alone. George Beech ([@GABeech](https://twitter.com/GABeech)) is my main partner in crime when speccing hardware here at Stack. We carefully spec out each server for its intended purpose. What we don't do is order in bulk and assign tasks later. We're not alone in this process though; you have to know what's going to run on the hardware to spec it optimally. We'll work with the developer(s) and/or other site reliability engineers to best accommodate what is intended live on the box. 

Read the rest of [Stack Overflow: The Hardware - 2016 Edition on Nick's blog here](https://nickcraver.com/blog/2016/03/29/stack-overflow-the-hardware-2016-edition/). It's the second in an [extensive series](https://nickcraver.com/blog/2016/02/03/stack-overflow-a-technical-deconstruction/) of blog posts on Stack Overflow’s technical architecture.
