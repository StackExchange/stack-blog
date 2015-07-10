---
author: jeffatwood
comments: true
date: 2009-01-24 09:20:23+00:00
layout: post
redirect_from: /2009/01/adventures-in-delclusionism
hero: 
slug: adventures-in-delclusionism
title: Adventures in Delclusionism
wordpress_id: 474
tags:
- company
- design
---


In Wikipedia, there are two opposing camps: [the inclusionists and the deletionists](http://en.wikipedia.org/wiki/Inclusionist). I found Nicholas Carr's definitions to be [the clearest and most succinct](http://www.roughtype.com/archives/2006/09/a_fork_in_wikip.php):





> **Inclusionists** believe that there should be no constraints on the breadth of the encyclopedia - that Wikipedia should include any entry that any contributor wants to submit. An article on a small-town elementary school is no less worthy for inclusion than an article on Stanford University.

> 
> 
**Deletionists** believe in weeding out entries that they view as trivial or otherwise inappropriate for a serious encyclopedia.





If you have time, you should [read Nick's article](http://www.roughtype.com/archives/2006/09/a_fork_in_wikip.php); it's an excellent survey of the topic. Although I've always thought of myself as an inclusionist, more or less, it's becoming increasingly clear that I also have some deletionist tendencies. I guess you might say I'm a **delclusionist**.



(my friend and ex-coworker [Jon Galloway](http://weblogs.asp.net/jgalloway/) claims I'm [also an analyst and a therapist](http://thedailydump.blogspot.com/2006/06/its-hard-out-here-for-analrapist.html), but who can take that guy seriously? Also, he gets upset with me when I don't hyperlink his name to his blog, but I don't hold that against him.)



Since Stack Overflow has **elements of wiki in its hybrid design, we also have to deal with the inclusionist/deletionist debate** -- although much less so than Wikipedia.



![Venn diagram: Wiki, Digg/Reddit, Blog, Forum](/images/wordpress/venn-diagram.png)



With that in mind, I wanted to talk a little bit about how deletion has evolved to work in Stack Overflow over the last 6 months. First: **who can delete things?**







  1. Post authors can delete their own questions or answers.

  2. Three (3) users with 10,000+ reputation can vote to delete questions that have been closed for 48 hours. Questions are closed when five (5) users with 3,000+ reputation [vote for a question to be closed](http://blog.stackoverflow.com/2008/12/i-move-to-close-this-question/) -- and can be reopened at any time through the exact same process in reverse.

  3. Moderators can delete anything.




This seems fair and just, on the face of things. When you vote to close a question, you are really voting for that question to be eventually deleted. There are some exceptions, most notably for duplicates which need to stick around so people can find the same information using completely different words. But **a closed question is no longer alive in any meaningful way, and certainly well on its way to the bit-bucket of [/dev/null](http://en.wikipedia.org/wiki/Data_sink)**.






But let me share with you a thoughtful email I received from Christian Nunciato that illustrates some of the subtle problems with deletion.





> On to my question.  I realize users have the ability to delete their own questions, which does seem right and good on the surface of things, but I have to say, it's a shame when some of us put such time and consideration into submitting thoughtful and complete answers, only to have the questions removed from the site inexplicably.  I'm writing in reference specifically to this one:

> 
> 
[http://stackoverflow.com/questions/470230/using-a-function-to-create-an-object-in-actionscript-3-0#470379](http://stackoverflow.com/questions/470230/using-a-function-to-create-an-object-in-actionscript-3-0#470379)

> 
> 
... which I thought was an excellent question, and one other site users might ultimately benefit from; it digs a bit into the arcana of the language, and it's interesting stuff for those looking to deepen their understanding.  For some reason, though, it looks like the OP chose to take it down, which is a shame, because I personally spent a good deal of time drafting a submission for it, one that was upvoted and appeared to fix the user's problem and then some.

>
>
I'm not asking for anything, though -- I just wanted to share that it's mildly discouraging to have put such work into something, in an attempt to contribute to the community, only to have the product taken down inexplicably and without recourse.  While the knowledge of having written it stays with me, which is great, it doesn't get out into the world, and it'll also make me think twice about spending as much time next time -- something that, as site owners, you might want to be aware of.





This is an unfortunate side-effect of deleting a question, which cascade deletes all the child answers. Now, **deletions are soft in Stack Overflow**, meaning the question is still there; it'll just return a 404 to all users except those with 10,000+ reputation or the moderator flag. It's precisely _because_ of situations like this that we recently extended the ability for high-rep users to see deletions, and help mediate any potential issues.



Note that the user who deleted a question is always identified, in giant type -- directly below the four users who elected to close the question first, and effectively nominated it for that deletion.



![question-deletion-example](/images/wordpress/question-deletion-example1.png)



If someone deletes an individual answer -- this can, by definition, only be done by a moderator or the post owner -- they're identified, too:



![answer-deletion-example](/images/wordpress/answer-deletion-example.png)



So in response to Christian's email, and a few other similar emails I've received, we have amended the deletion rules a bit:







  1. Post authors can delete their answers. But they can _only_ delete their questions **when there are no significantly upvoted answers to the question**.




Usually, it's garbage-in, garbage-out. Bad questions beget bad answers. If you sort the Stack Overflow question list by votes and sink to the bottom of the barrel, you'll find some truly horrible questions, as you might expect. But you'll also find something you probably didn't expect -- some _amazingly_ good answers! Now, these are questions judged by community votes to be of so little merit that I'd usually delete them without a second thought. But I can't, because a well-intentioned Stack Overflow user has poured his or her heart into an incredibly insightful and helpful answer. Deleting the bad question would bury the good answer, too. It's the web forum equivalent of turning lead into gold, and it happens far more often than I ever would have predicted. (This is also the reason why voting on questions should be, and is, independent of answer votes.)



I am neither an inclusionist (everything should be allowed, without restriction) or a deletionist (anything not on a strict list of allowed topics should be deleted). I'm somewhere in between, a **delclusionist**, so Stack Overflow is going to reflect that design philosophy.



Let me be clear: **deletion isn't something we seek out, but we believe it's necessary**. That said, it's not an easy line to walk, and we continue to evolve the system. Sometimes [it's hard out here for a delclusionist](http://www.youtube.com/watch?v=RfD2PWx3WHg).

