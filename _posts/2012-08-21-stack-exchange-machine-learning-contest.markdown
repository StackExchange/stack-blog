---
author: kevinmontrose
comments: true
date: 2012-08-21 16:15:48+00:00
layout: post
redirect_from: /2012/08/stack-exchange-machine-learning-contest
hero: 
slug: stack-exchange-machine-learning-contest
title: Stack Exchange Machine Learning Contest
wordpress_id: 12099
tags:
- company
- announcement
- stackoverflow
---

Over the last 4 years we've built up quite a bevy of moderation tools here at Stack Exchange.  We've got closing, editing, deleting, flags of all sorts, voting, commenting, review queues, and more.

[caption id="attachment_12128" align="aligncenter" width="450"][![](https://i.stack.imgur.com/WanVT.png)](http://blog.stackoverflow.com/2012/08/stack-exchange-machine-learning-contest/fake-mod-tools-3/) Plus our super secret mod tools.[/caption]

These all work great, but they all require action **after a post is made**. This is a lot of work for the community, and not particularly friendly toward those posting, particularly new users. In a perfect world, we'd be able to offer specific, targetted guidance for authors whose posts were likely to be shot down, _before_ they ever showed up on the site, and without requiring as much up-front effort from our community.

We've already expended some effort on this front with [some basic tests that reject obviously problematic](http://meta.stackoverflow.com/questions/56817/can-we-prevent-some-of-the-low-quality-questions-from-entering-our-system) questions, and automatically flag borderline ones [for review](http://stackoverflow.com/review-beta/low-quality-posts/), but we feel this can be done much better.


## This is where you come in


We're running a machine learning contest on [Kaggle](https://www.kaggle.com/) to find an algorithm that predicts whether (and for what reason) a question will be closed.


[![](https://i.stack.imgur.com/vt6MP.png)](https://www.kaggle.com/c/predict-closed-questions-on-stack-overflow/)




The idea is simple: we've prepared a dataset with all the questions on Stack Overflow, including everything we knew about them _right before they were posted_, and whether they finally ended up closed or not.  You grab the data, build your brilliant classifier, run it against some leaderboard data and submit your results.  Rinse and repeat until the contest ends, when we'll grab the most promising classifiers and run them against fresh data to choose winners.

The winners will get our respect, the knowledge they've helped make the Internet a better place - oh, and some **cold hard cash**.



	
  * 1st prize - $11,000

	
  * 2nd prize - $6,000

	
  * 3rd prize - $2,000




There's also a $1,000 prize for the best visualization of our data.







The contest runs from [Tuesday August 21st until Tuesday October 9th](https://www.kaggle.com/c/predict-closed-questions-on-stack-overflow/details/timeline).


We're also hiring a [full-time data scientist](http://careers.stackoverflow.com/jobs/19463/stack-exchange-data-scientist-stack-exchange), and we're going to be very interested in talking to the authors of the best classifiers.

So head on over now and...


# [Check out the contest](https://www.kaggle.com/c/predict-closed-questions-on-stack-overflow)


Some explanation of how we'll use the classifiers that come out of the contest, as there seems to be some confusion on that point.

First and foremost, there's no plan to "auto close" questions. Human oversight will always be needed, there are always edge cases, evolving standards, and what-have-yous that won't be captured in any algorithm.

What we'd be really excited to try out is giving users who are composing questions advice on how to improve them _while they're composing them_. This would save a lot of time, **reduce** the overall close rate, and make new users' first asking experience more likely to be a pleasant one.

A secondary goal is to improve our auto-flagging of questions, as our current system is very simple and has some known issues.
