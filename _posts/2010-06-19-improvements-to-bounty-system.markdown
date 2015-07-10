---
author: jeffatwood
comments: true
date: 2010-06-19 06:42:46+00:00
layout: post
redirect_from: /2010/06/improvements-to-bounty-system
hero: 
slug: improvements-to-bounty-system
title: Improvements to Bounty System
wordpress_id: 3746
tags:
- company
- community
- design
---

We originally [rolled out the question bounty system](http://blog.stackoverflow.com/2009/01/reputation-bounty-for-unanswered-questions/) in January 2009. It has worked fairly well, in terms of **motivating answerers and increasing the connection between askers and answerers**. But I think we made some mistakes in being overly strict in our design of the bounty system.



Just take a look at some of these highly voted meta requests in the [bounty] tag:







  * [How about making it possible to set up bounty on someone else’s question?](http://meta.stackoverflow.com/questions/1409/how-about-making-it-possible-to-set-up-bounty-on-someone-elses-question)

  * [Why an answer can’t be accepted after an unresolved bounty?](http://meta.stackoverflow.com/questions/1413/why-an-answer-cant-be-accepted-after-an-unresolved-bounty)

  * [Please do not auto select answers on bounty questions](http://meta.stackoverflow.com/questions/4508/please-do-not-auto-select-answers-on-bounty-questions)

  * [Why do I _always_ have to accept an answer at the end of the bounty period?](http://meta.stackoverflow.com/questions/27307/why-do-i-always-have-to-accept-an-answer-at-the-end-of-the-bounty-period)

  * [Should SO introduce a Re-Bounty feature](http://meta.stackoverflow.com/questions/90/should-so-introduce-a-re-bounty-feature)




The [feedback on the bounty system](http://meta.stackoverflow.com/questions/tagged?tagnames=bounty&sort=votes) is quite extensive; this is an indication that there are what I'll euphemistically call er ... "issues" ... with the current system. 



Well, I'm happy to announce that we're **improving the bounty system** to address (almost) all of these issues. As of now:




  1. Any user with sufficient reputation can start a bounty on _any_ question

  2. A question may have multiple bounties, though only one active bounty is allowed at any given time.

  3. Bounty awards are no longer tied to accepted answer in any way.




Most of this is adapted from [a great idea](http://meta.stackoverflow.com/questions/1413/why-an-answer-cant-be-accepted-after-an-unresolved-bounty/49224#49224) from our Community Coordinator, [Robert Cartaino](http://blog.stackoverflow.com/2010/04/welcome-stack-overflow-valued-associate-00005/).



Assuming you have the minimum reputation required to award a bounty (currently 100), every question of 2 days of age or older will now show the "start a bounty" link at the bottom of the question.



![](/images/wordpress/bounty-start-bounty.png)



Here, you can slice off a (non-refundable) piece of your own reputation -- from 50 to 500 -- to grant to one of the question answers of your choice. Once started, the bounty amount and name of the bounty owner is listed at the bottom of the question: 



![](/images/wordpress/bounty-award-question-text.png)



(Of course the bountied question will appear on the [homepage featured tab](http://stackoverflow.com/?tab=featured) and in all question lists with the bounty indicator, as before. Part of what you're "paying for" with the bounty is to get additional attention for your question, over and beyond what a normal question gets.)



If you're the bounty owner, you can award the bounty to a particular answer by simply clicking the bounty amount icon that appears next to each answer, as pictured below:



![](/images/wordpress/bounty-award-indicators.png)



There are still some rules, of course:







  * All bounties are paid for up front and non-refundable under any circumstances.

  * Users may only have one active question bounty at any given time.

  * Questions may only have one active question bounty at any given time.

  * The bounty owner must wait 24 hours between the time starting the bounty, and the time the bounty can be manually accepted.

  * If the bounty owner does not award the bounty within the 7 day bounty period, the same auto-award rules apply, as before: any answers to the question posted _after_ the bounty started, with at least 2 upvotes, are eligible for auto-accept and earn half the bounty amount. If there aren't any answers meeting that criteria, no bounty is awarded.

  * The system no longer tosses in +50 bonus reputation to a bounty. We feel this newer, much more open bounty system no longer needs that incentive.




Once awarded, you'll see the bounty amount icon permanently affixed to the answer it was awarded to -- and, again, **_all bounties are completely independent of and unrelated to accepting an answer_**.



![](/images/wordpress/bounty-answer-awarded.png)



Before, bounty was strictly limited as a one-shot (tied to accepted answer) for question owners only. It's now a much more flexible system:







  * Feel like a particular answerer on a question did a fantastic job and deserves some kind of bonus, beyond a simple upvote? Award them a bounty!

  * See a question that you'd really like answered, too? Help out the question owner by placing a bounty on it!

  * Want to provide a boost to a particularly well asked question (or answer) by a new user? Start a bounty on it!




I'm excited about these changes, because they open up bounties to a much larger audience -- and make it easier for us to help **contribute our own reputation toward others getting great answers to their questions!**

