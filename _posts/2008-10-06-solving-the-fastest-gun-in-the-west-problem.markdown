---
author: jeffatwood
comments: true
date: 2008-10-06 08:24:56+00:00
layout: post
redirect_from: /2008/10/solving-the-fastest-gun-in-the-west-problem
hero: 
slug: solving-the-fastest-gun-in-the-west-problem
title: Solving the "Fastest Gun in the West" problem
wordpress_id: 113
tags:
- company
- design
---


Some Stack Overflow users are concerned about what they call [the "Fastest Gun in the West" problem](http://stackoverflow.uservoice.com/pages/general/suggestions/24695):





>
Each question's answers are sorted by descending score and then descending time of posting. **This means that if a person sits down and answers a question in a long, thorough way, going through every nook and cranny, once they post their answer, it will already be one of about seven different ones, some of which have already been upmodded.** This wouldn't be a problem if those answers were as thorough as the one this guy's posting, but they usually aren't. Some of them are downright wrong, some aren't even answers to the question asked because their poster didn't bother to read the question all the way through.

> 
> 
This causes a problem I like to call SO's Fastest Gun in the West Problem.

> 
> 
I've come to a point where I'd rather just send a short, simple, correct explanation, than to go and do some proper research, write a whole blog post about it or even make sure the code I post even compiles, just so it will be noticed, as opposed to the incorrect ones.






A number of solutions were proposed, but I believe many of them were worse than the so-called "problem" they purported to fix. Personally, I agree with Adam Davis, [who wrote](http://stackoverflow.com/questions/56103/fastest-gun-in-the-west-problem#56557):





>
**I do NOT want to, in any way, discourage the quick and dirty answer.**

> 
> 
I've asked questions that have received an immediate answer with enough information to get me past my block, but not served on a platter as you propose, with all the information I might need.

> 
> 
This is extraordinarily helpful - I know I can post something on here, day or night, and get an answer within minutes, often seconds, that will be better than searching through books, online, etc, even though it's a throw-away post that took someone 35 seconds, who may have only answered for the reputation. If it's at all helpful, I upvote it.






It does seem nonsensical to me that we'd be _complaining_ about getting lots of quick answers to our questions. Oh no! How horrible! Lots of answers to our questions, and nearly immediately! Anything but that! It's terrible, just awful!



Seriously, isn't getting rapid answers the _entire goal_ of a question and answer site in the first place?



That said, the one implementable recommendation that came out of this discussion is an **active, GMail like notification when you are composing an answer**. We agreed with this feature request, so Jarrod implemented it. Here's how it works:







  1. When you start composing a reply, a timer is created.

  2. Every minute, the page checks itself to see if new answers have arrived.

  3. If new answers arrive, the notification bar will tell you how many, and offer to update the page for you.

  4. Answer updates are performed AJAX style, so they don't interrupt your current answer.




![stackoverflow-new-answer-notification](/images/wordpress/stackoverflow-new-answer-notification.png)



We explicitly used GMail as our model, since that's what we were familiar with. I hope you like it, and more importantly, I hope it addresses the perceived "fastest gun in the west" problem.



![yosemite-sam-with-guns](/images/wordpress/yosemite-sam-with-guns.png)



Now, armed with this new feature, go forth and [answer those unanswered questions](http://stackoverflow.com/unanswered) as fast as you can. Pow! pow! pow!

