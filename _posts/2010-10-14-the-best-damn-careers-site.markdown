---
author: korneel
comments: true
date: 2010-10-14 14:17:36+00:00
layout: post
redirect_from: /2010/10/the-best-damn-careers-site
hero: 
slug: the-best-damn-careers-site
title: The Best Damn Careers Site
wordpress_id: 5591
tags:
- company
- careers
---

Last week I was at [Business of Software 2010](http://businessofsoftware.org) (which was totally awesome by the way) and ended up talking to a number of people about Careers. One of them said: “This is great, but why don’t we hear more about this?” And he was right… It’s been a while since we blogged anything about Careers – hereby remedied.

Let’s go back to our goal for a bit: To make Careers the [best damn place on the internets to find an awesome job/employee](http://careers.stackoverflow.com). There are two main components to that: quantity and quality. The first one is relatively easy: We don’t need to be the biggest technology careers site (although if that were to happen, we wouldn’t mind), but we need a certain number of jobs and CVs to become a truly useful resource for our clients. While we have made headway the past few months, we aren’t quite there yet. This doesn’t mean we suck (I think we’re pretty awesome) – but neither are we the best yet.

Then there’s quality, which comes in two flavors: the quality of the app itself and the quality of the information and community it contains. You need both flavors to attract more users, but as you grow, the second one is at risk of going down as it will become harder and harder to keep tabs on everything (more on that later).

At the moment we still have two distinct products: [Job listings](http://careers.stackoverflow.com/Jobs) and the [CV database](http://careers.stackoverflow.com/cv) (I say at the moment, because ultimately these should be two fully integrated sides of the same glorious coin). When we started working on careers a few months ago [we first turned our attention to the candidate UX](http://blog.stackoverflow.com/2010/06/careers-now-more-awesomer/), improving both looks and functionality. The last several weeks we’ve worked on making it easier for employers to post and manage jobs. Oh, and we had to build a new order management and fulfillment system (both were still running off Fog Creek’s systems).

There’s one more thing we’ve been doing, and that is to communicate more. We’ve made the jobs ads on Stack Overflow proper much more visible and have started targeting them to your location. We started tweeting (follow us: [@StackCareers](https://twitter.com/#!/stackcareers)). We’re continuously reaching out to companies to generate more listings. Finally, we’re starting to think of additional ways to reach out to employers to generate more listings and to educate the HR people of this world about the finer points of hiring kick-ass programmers (ZOMG! Marketing!).

While the Job postings side of things largely depends on the quality and quantity of the job postings, the CV database stands or falls with the quality and quantity of the CVs. While the basic system is working, I see two immediate areas for improvement: 1) Make it easier for candidates to get into the database and 2) Do a better job of explaining why you should bother.* More CVs mean more employers searching them, which is a good thing.

Once we have the above in place we’ll work on making both sides better and on integrating them so that as an employer you could for instance (and don’t quote us on this) save CVs against an existing job or, as a candidate, perhaps you could be fed jobs that match your CV.

And then we’ll take all of Careers and figure out how we can better integrate it with Stack Overflow proper so that relevant jobs appear when and where you need them, and relevant SO behavior correlates back to your CV.

(/images/wordpress/lolcat-job-300x236.jpg)

So what about quality? It is perhaps the largest determinant when talking about being the best damn site on the web. Without high quality candidates and employers we’re nowhere. I’m not only talking about high quality CVs and Job postings, but also high quality behavior. We want employers that will carefully select the best few candidates rather than spamming our entire database with “Do you know anyone that might be interested?” emails. Likewise, we want candidates that are responsive when they receive a relevant query rather than ignoring the message because they’re not currently looking.  While we can, and most likely will, try to identify undesirable behavior and put measures in place to prevent it, we like the idea of augmenting that with a more self-governing approach (we can’t possibly identify all the ways in which people might misbehave… But once we know what the community determines to be undesirable we can put further preventative measures in place).

We’re currently thinking along two lines:



	
  1. Effort should be rewarded (or: the more you put in the more you should get out of the service)

	
  2. The definition of quality is ultimately determined by our users, so we want to build in some sort of voting / flagging mechanism.


The first point primarily speaks to the content you produce: more complete CVs or job postings should perhaps be ranked higher in searches than less complete ones. The key question is how to determine this. Completion is one thing, but that does not necessarily correlate to quality. This is where the second point could help out as it applies to both behavior and content. If you traditionally have a habit of not responding or of spamming people we may reduce your visibility, if on the other hand you routinely excel in your posts and communications maybe we’ll weigh you a little higher and will prioritize your messages. Or maybe we’ll just implement a reputation system on Careers.  The difficulty with voting / flagging is that quality is context specific: As a c# programmer you probably won’t care about a php listing, but that doesn’t necessarily mean it’s not a good posting. If however that same employer hits you up through the CV database, there _is _a quality issue. Similarly, the fact that a resume is not relevant to you doesn’t mean it’s bad. Figuring out how to manage this part of the equation will most likely take some time and trial and error.

That's all I got. Some of the above is more concrete and planned out than other parts, but I wanted to give you a look in the kitchen so you’d know what’s cooking. As always, email us at [careers@stackoverflow.com](mailto:careers@stackoverflow.com) or let loose on [meta.stackoverflow.com](http://meta.stackoverflow.com/) with any questions, or simply to let us know your thoughts.

* Awesome employer has an awesome job, looks in CV DB and finds the perfect candidate. Employer offers candidate job, candidate accepts, and they both sail off in the sunshine together (even if candidate is not actively looking at the moment they'll have an awesome conversation, and will sail of into the sunshine together at some point in the future).
