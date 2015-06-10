---
author: david
comments: true
date: 2012-03-28 17:33:47+00:00
layout: post
redirect_from: /2012/03/careers-2-0-new-features-for-hiring-developers
hero: 
slug: careers-2-0-new-features-for-hiring-developers
title: Careers 2.0 New Features for Hiring Developers
wordpress_id: 11468
tags:
- company
- careers
---

Stack Overflow Careers 2.0 re-launched a year ago, and since then we’ve been steadily making improvements to it. While we’ve added a lot of new features for developers to [find great jobs](http://blog.stackoverflow.com/2012/03/enterprise-vs-consumer-development/) and [show off their stuff](http://blog.stackoverflow.com/2011/06/codeplex-and-other-gateway-drugs/), we’ve been a bit…neglectful of the employer side.

Well, not any more. We’ve just wrapped up a big set of changes to how companies find and track the perfect developers for their jobs. So if you’ve ever considered hiring a developer, read on for the details.


## Some Background


Stack Overflow Careers launched with one goal: help developers find great jobs. We do that in two ways: developers can go looking for jobs on our [jobs board](http://careers.stackoverflow.com/jobs), or they can [create profiles](http://careers.stackoverflow.com/cv/get-one) showing off their work and let employers come to them.

From the employer’s point of view, these were two completely separate products. You either bought a job listing and collected applications, or you bought a search subscription and searched in our database. You could buy both, but they wouldn’t share any information between them.

No big deal, we thought. Well, it turns out that these products are really complementary and a lot of employers would like to use both. Job listings bring in lots of programmers who are actively looking for jobs, but they don’t reach the pool of really great candidates who already have jobs but may be willing to talk. Candidate search excels at the latter, since 25,000 of the 32,000 searchable profiles in Careers are people who are not actively looking for a job.

So we set out to bridge that gap and bring job listings and search together.


## Messaging


First, we tackled messaging. We consolidated all of your messages into one simple new interface:



![](/images/wordpress/messages1.png)

We’re obviously not breaking any new UI ground here: this looks and works like an email client. The important thing is that it combines everything into a nice, clean view: developers can easily see which jobs they’ve applied to and which companies have contacted them, and employers can see who they’ve contacted and who has applied to their jobs.


## Candidate Tracker


The second piece we tackled was tracking candidates. Previously, when applications came in they just went into a big pile of resumes and cover letters, and you couldn’t do anything with them – not even sort them into “keep” and “reject” piles. Similarly, if you found an awesome developer via search, you could message them, but you couldn’t take notes or even easily keep track of their response. So we decided to combine these things together into a new candidate tracker:

![](/images/wordpress/candidate-tracker.png)

We took a lot of cues from [Trello](http://trello.com/) (which we love – you should really try it if you haven’t): each candidate shows as a card with a picture, name, rating, and a short summary that you can create to keep all the candidates straight. You can drag them around between various states of the hiring process, and you can click them to see all their details:

![](/images/wordpress/popup.png)

From the expanded card, you can easily see all of a candidate’s information, make notes, and send messages. At each stage of the process you can either advance the candidate, or dismiss them from the list (always reversible, of course).


## Candidate Search


This paved the way for integrating search with job listings. Now when you search, you’re searching to fill a particular position and all the candidates you save will be associated with that job. This makes it possible to keep two separate lists for two jobs (if, say, you’re looking for a front-end jQuery developer and a back-end python/mysql dev), and lets you associate a job listing with each search to get even more candidates.

![](/images/wordpress/search.png)

This also let us cross off a frequent complaint: you’ll no longer see the same candidates showing up over and over again in searches. Once you’ve saved or dismissed a candidate, they’ll stop showing up in searches for that job, so you won’t have to keep paging past them to get to the new results.


## Job Listings


Finally, we took another look at job listings and added some stats to help you track where all your applications came from:

![](/images/wordpress/listing.png)

This page now shows the number of views your job listing has gotten, what percentage of those people clicked a link in your job listing, and how many ended up applying for your job. We also show you where people came from, so if you posted the listing on our board, then tweeted it and posted it on your website you can actually see how many came from each place.

We also added embed codes for our [fancy new apply button](http://blog.stackoverflow.com/2012/03/enterprise-vs-consumer-development/). That means that if you list your jobs on your company website, you can now directly embed a button to apply for the job with Careers. It opens a popup which lets developers apply to the job without ever leaving your website:

![](/images/wordpress/apply-popup.png)


## Conclusion


That’s it for this round! This was a big change on the back end, and it sets the stage for a lot more changes we’re going to jump into working on next. If you’re already a customer, let us know what you think on [meta.stackoverflow.com](http://meta.stackoverflow.com) or [via email](mailto:careers@stackoverflow.com). If you’re a developer and you’d really like to work with some kickass fellow developers using Stack Overflow, email your boss or hiring manager and tell them to try [Careers](http://careers.stackoverflow.com/)!


