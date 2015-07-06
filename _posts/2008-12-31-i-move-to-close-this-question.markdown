---
author: jeffatwood
comments: true
date: 2008-12-31 10:20:28+00:00
layout: post
redirect_from: /2008/12/i-move-to-close-this-question
hero: 
slug: i-move-to-close-this-question
title: I Move to Close This Question
wordpress_id: 228
tags:
- company
- community
- design
---


As an active Stack Overflow user, one of the abilities you'll gain at 3,000 reputation is **the ability to close and reopen questions**. Closed questions don't allow any new answers to be added, but can still be edited and commented on. All it takes is one user (with the appropriate reputation level, natch) to decide a question is closed.



![stackoverflow-close-menu](/images/wordpress/stackoverflow-close-menu.png)



I had a long email exchange with an avid Stack Overflow user, [Mike Stone](http://stackoverflow.com/users/122/mike-stone), on this topic in September. I view closing as working in parallel with voting, serving as an important check and balance by experienced users versus regular votes. I explained my position:





>
Visit any online forum and you'll find lots of locked threads. Closing is equivalent to locking a thread. **Would you really argue that every online bulletin board should allow any topic whatsoever to be opened and discussed?** If so then maybe Stack Overflow is not the place for you, because that is definitely not the intent. Based on all the data I've seen, closing is working. So is voting. They complement each other!






Mike was still adamant that closing questions was a bad idea:





<blockquote>
Consider the thing that I have seen REPEATEDLY which would be solved by a simple consensus to close.  It takes 1 person to close a question... if they just don't like the question because they don't see how it relates to programming... they are doing an ACTIVE DISSERVICE to the site by closing it (this happens very often from what I've seen).  If multiple people are required to close, this both builds the community more and limits the harm 1 person can do (it's easy to undo, but it's equally easy to redo).
</blockquote>





I've since come around to Mike's way of thinking. Almost everything else on Stack Overflow is vote based. Allowing a single person with 3,000 rep to close a question isn't really in the spirit of having a consensus that SO was founded on. It's true that a peer can then come along and reopen the question at wiill any time, but this then leads to ping-pong battles of opening and closing between two users. And probably a lot of angst.



So as of tonight, I've taken Mike's advice. Jarrod implemented **vote-based question closing and reopening**.



![stackoverflow-move-to-close](/images/wordpress/stackoverflow-move-to-close.png)



Now, when you click "close", it's counted as a vote. **If three people agree that a question should be closed** (for any reason), it will be closed. If you disagree with this, no problem! You can reopen the question in the very same way. 



![stackoverflow-move-to-open](/images/wordpress/stackoverflow-move-to-open.png)



If three users with 3,000+ rep all **vote to reopen a question**, it will be reopened.



It's important to note here that closing a question is a step on the **road to deletion**. Closing is effectively "nominate to delete", as a question that can't be answered is no longer truly "alive". That said, some closed questions should be kept around. For example, duplicate questions that have totally different wording are sometimes useful. With the duplicates, people can find either variation with search terms and link through to the original. The majority of closed questions, however, aren't particularly useful and are much more likely to eventually be deleted.



(As an aside, it is a continual source of amazement to me that people can ask two identical questions with almost _no_ words in common -- but I see it practically every day!)



In fact, one of the moderation powers we now allow for 10,000 rep users is to delete closed questions (they must be closed, first) and complete the loop. Of course, questions can also be undeleted, so I guess the circle begins again..



Here's to Mike Stone for being patient and sticking with us; this change makes the site better for everyone.



See, we do listen. Eventually.

