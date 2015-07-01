---
layout: post
author: jonhmchan
title: How We Built Our New Blog
hero: http://i.stack.imgur.com/FYbC3.jpg
description: "There was a lot that went into building our new blog - including the new engineering channel. See why it took us six to eight weeks to move to a new system, migrate our old content, and redesign the whole system."
tags:
- engineering
- development
- sysadmin
- design
- evangelism
---

*Jon is a developer and heads up evangelism efforts at Stack Exchange. You can follow him on [Twitter](http://twitter.com/jonhmchan).*

Today, we [announced](http://blog.stackexchange.com/2015/07/the-new-stack-exchange-blog/) the redesign of our blog and the addition of our engineering channel. This is the first post related to engineering detailing a walkthrough of what we've built, and what better to blog about rebuilding our blog on our new blog? How meta.

## It Started with an Engineering Blog
A few months ago, I took up a de facto role heading up developer evangelism efforts at Stack Exchange. I say that with a caveat: we treat developer evangelism at the company very differently than most other companies do. What we *don't* want to do is create a team of people that travel around, speaking at events, trying to sell something and code ocassionally - that's not what we wanted. Instead, what we want to do is really highlight the amazing public outreach work members of our engineering team are already doing. Most if not all of our developers are active members of the technical community writing blog posts, doing open source work, and speaking at conferences. Of course, many of them are extremely active on Stack Overflow as well. We really want to make light of the individual public outreach efforts our engineering team is actively doing. Second, we want to make the philosophy that has made Stack Overflow so successful for the developer community more widely known. Who better to do that than the developers that helped create that community?

So the first natural solution to address these goals would be to blog about it. We were inspired by a lot of great technical blogs out there like [Code as Craft](https://codeascraft.com/) and [OkTrends](http://oktrends.okcupid.com/) and the idea of an engineering blog that were similar to these examples had been thrown around. However, there were reservations about creating a completely separate blog: why fragment our readership even further? We had the official Stack Exchange company blog, the ServerFault blog for our SRE team, and the many personal blogs that our individual developers had where they did walkthroughs of the things they've built internally. There were so many different avenues to publish our work, and we couldn't figure out where this content would live. It seemed as though if we ever wanted to create new kinds of content to write about, the blog ecosystem that we had would force us to fragment our audience even further or simply be inappropriate in one of the existing channels. What we *really* needed was a single destination that could accomodate many different kinds of content instead of creating multiple destinations that specialized in one kind.

The ideal solution would be to take our most popular blog, the official Stack Exchange blog, and use it to house the new content we wanted. That turned out to be a much larger project that took [six to eight weeks](http://meta.stackexchange.com/questions/19478/the-many-memes-of-meta/19514#19514).

### The Stack Exchange Blog and Channels
After sending out the original proposal, I quickly realized I might have stepped on landmine. The blog ecosystem was something that we've wanted to address for a very long time, and trying to touch the official company blog meant that pretty much every part of the company would be directly affected and had strong opinions about where it

## RIP Wordpress, Hello Jekyll

## Stack Exchange? Stack Overflow?
The most notable thing that we changed is the overall design. We wanted to make something that people enjoy reading, exploring, and learning from. Most of all the things from the previous blog still exist: previous posts with archived comments, tagged posts sortable by category, and so on. We've also added some additional functionality here: new navigation that emphasizes our new channels and content, posts sortable by author, and better feeds with individual post pages for readability. Take a look around, there's a lot of changes we've made here.


![](http://i.stack.imgur.com/jfB91.png)
*A new navigation that emphasizes the new channels and subsections we want to emphasize*


![](http://i.stack.imgur.com/fdA9K.png)
*Better overview look that's more photo heavy, provides an excerpt, and the ability to look through posts sortable by authors*


![](http://i.stack.imgur.com/gu34P.png)
*A revamped individual post view with bigger text, more spacing, and more photo heavy*


## Open source
![](http://i.stack.imgur.com/ggOC0.png)
The last thing I want to mention is that we've made the code for our blog [open source](https://github.com/StackExchange/blog). One of the things we love doing as an engineering team is to work in the open when we can. We love involving the communities we build in almost everything we do as a rule, especially our technical community, and the blog is no exception to that rule. We've migrated our previous blog from a Wordpress site and rebuilt our new blog powered by [Jekyll](http://jekyllrb.com/), which is also open source.

If you have suggestions for how to make the new blog better, [create an issue](https://github.com/StackExchange/blog/issues) and one of our developers will take a look at it (probably me). If you're a developer, we encourage you to take a look the source code and make [pull requests](https://github.com/StackExchange/blog/pulls) for changes as well. If you want a walkthrough of how we built the blog, take a look at the engineering channel for an inside look.

## More to come
There's so much more we want to do with this blog in the future. It's one of the few places we have as a company to talk directly to the community we've helped build and love so much. As always, sound off in the comments about what you think about the changes, ideas you have about how to make it better, or take an extra step and become a contributor writing code. Until next time!

