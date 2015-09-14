---
author: jeffatwood
comments: true
date: 2008-12-23 09:55:47+00:00
layout: post
redirect_from: /2008/12/vote-fraud-and-you
hero: 
slug: vote-fraud-and-you
title: Vote Fraud and You
wordpress_id: 170
tags:
- company
- design
---


As we discovered in the [Stack Overflow podcast with the Reddit guys](http://blog.stackoverflow.com/2008/10/podcast-27/), they have a hidden mechanism for detecting and defeating **revenge voting patterns**. I suppose it's a measure of how naive we are, but this wasn't even on our radar.



Well, now it is.



If you irritate another user, they might be having a bad day and decide to take it out on you by **methodically going through and downvoting every post you've made**. The impact of this is pretty limited on Stack Overflow, as you only get 30 votes per day, and upvotes are +10 while downvotes are only -2 (and -1 to the votee). 



(As an aside, if you're regularly pissing off a lot of other users, consider taking part of [our FAQ](http://stackoverflow.com/faq) to heart: be nice! We're all here to learn from and share with each other. This is in no way an excuse for bad behavior, of course, but realize that people tend to respond in kind. When in doubt, always treat people with the same respect and decorum you'd want them to treat you. Even if they don't deserve it.)



Still, it's unacceptable behavior, and I've been getting several reports of this sort of revenge downvoting now, enough that we needed to take action to combat it.



[![Poll Faults](http://www.coxandforkum.com/archives/06.11.07.PollFaults-X.gif)](http://www.coxandforkum.com/archives/000973.html)



I was pleasantly surprised to find that the vast, vast majority of Stack Overflow users do _not_ engage in revenge downvoting. Unfortunately, for those users that do, the pattern was quite clear. As of today, **we have several queries that look for unusual downvote patterns**. If we discover these patterns in a given user's voting history, we view all their downvotes for that user as suspect. They're all silently deleted, and any lost reputation is restored to the unfortunate target of these downvotes.



While working on this code, I also realized that we should be checking for the inverse of this behavior -- unusual _upvote_ patterns. To game the reputation system, unscrupulous users might create alternate user accounts that vote up their main account. Again, this is a bit tougher on Stack Overflow than other sites, because we don't allow any user account to upvote at all until they've earned 15 reputation first. And then of course there's the aforementioned 30 vote per day limit.



I reformulated my queries, and I found that there were **many, many more suspicious upvote patterns** than downvote patterns. More than five times as many! I guess I shouldn't be surprised, since the value of a single +10 upvote is fairly high. In parallel with the downvote validation, we now use several daily heuristics to detect strange user upvoting patterns; if we decide the upvotes are questionable, they will _all_ be removed.



Anyway, if you find that your reputation has changed overnight, it might be because we now check for, and remove, any suspicious upvote or downvote patterns.



I thought about doling out reputation penalties to the users involved, but I figured it's better to err on the side of forgiveness. I want to be clear that the "problem" voters are a very, _very_ small part of the Stack Overflow community. Most people use the voting system the way it was intended. Our policy on this is simple: we'll silently remove any vote fraud we detect. Please don't do it. In the long run, it will be **easier to earn reputation by posting great answers and questions than gaming the system.** 

