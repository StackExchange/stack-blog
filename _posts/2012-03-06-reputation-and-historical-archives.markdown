---
author: shog
comments: true
date: 2012-03-06 02:14:47+00:00
layout: post
redirect_from: /2012/03/reputation-and-historical-archives
hero: 
slug: reputation-and-historical-archives
title: Reputation and Historical Archives
wordpress_id: 11339
tags:
- company
- background
- community
---

If you've been around Meta Stack Overflow the past few days, you've seen a fair bit of conversation sparked by [the recent changes to how reputation is calculated](http://meta.stackoverflow.com/questions/123319/recent-reputation-history-changes):


>To be clear: **reputation values are not changing, every action in the system is still worth the same amount**. Here’s what _will_ be different:

> 
> 
	
>   * Your reputation will be correct at all times
> 
	
>   * Deletions will have a much more immediate effect on reputation, not waiting on a recalc (but reputation sync takes up to 5 minutes on a delete/undelete action; as to not block the user's response thread, it's offloaded to a background queue)
> 
	
>   * Recalcs will no longer be necessary
> 
	
>   * Up/Down vote reversals will restore the correct reputation amount
> 
	
>   * Up/Down vote reversals will correctly adjust to the reputation cap
> 
	
>   * The reputation history in your profile will be more detailed and accurate (e.g. when a post is deleted, you'll see that in the reputation tab of your profile)
> 



This may sound pretty boring - and it is - but it's a big deal for some of our most avid users, for whom that number at the top of the screen is an at-a-glance indicator of how their contributions are faring on the site. Up until now, the reputation visible next to your name on your profile was a rough approximation of your _real_ reputation - [only a recalculation](http://blog.stackoverflow.com/2010/03/the-great-reputation-recalc-begins/) would resolve all the discrepancies that crept in over time.

Unfortunately, we botched what _should_ have been a much-welcomed roll out for this feature. See that last bullet quoted above? The one about deleted posts? Anyone who's been on Stack Overflow for a while has at least a few deleted posts attached to their reputation history, especially those of us who participated early on when exact details of what Stack Overflow _is_ were still being hammered out. Questions that weren't really questions, answers to one of the many polls or Getting To Know You threads that sprung up, things that were reasonably normal at one time but have since been deleted as we've become more focused, or even just information that became obsolete as technologies changed. Deletion is a critical part of the site's question lifecycle - [as Jeff wrote recently](http://blog.stackoverflow.com/2012/01/the-trouble-with-popularity/),


<blockquote>We know that closing the cookie jar is painful. We feel your pain. Nobody likes having their fun taken away. But it’s too addictive and too easy, and in the absence of any moderation, the community would do nothing but add and upvote the easy, fun stuff.</blockquote>


And _nothing_ makes you feel that pain quite like reminding you of it with a bright red line every time you visit your profile:

![](/images/wordpress/badrep.png)

As you can see in that screenshot, there's an actual_ link_ to the deleted answer - this is **the first time we've made that information available!** And the response to it was immediate: folks went through their histories, looked at all the deleted questions and answers, and found a bunch of stuff that, while not_ strictly_ compliant with current practices on Stack Overflow, [probably shouldn't have been deleted](http://stackoverflow.com/questions/432922/significant-new-inventions-in-computing-since-1980).

In short, fixing one bug (inaccurate reputation history) exposed several others (a flawed deletion process and a lack of respect for important past contributions) and created a new one (humiliating display of reputation on deleted questions).

So after[ much discussion on Meta Stack Overflow](http://meta.stackoverflow.com/questions/124439/community-led-deletionism-a-protocol-for-sanity) as to how this should be handled, we came up with the following four fixes:

**First**, if you've contributed something worthwhile to the site, you should keep the reputation for that even if it eventually gets deleted. "Worthwhile" here is defined as,



	
  * A score of 3 or greater

	
  * Visible on the site for at least 60 days


In fast-changing professions, there should be no shame in contributing valuable information just because it eventually goes out of date - and there shouldn't be a penalty for deleting it when it does. Naturally, editing to bring an answer up-to-date is preferable - but if someone else already posted a good answer with current information, you should be able to remove yours and keep the reward for the time it _was_ useful.

**Second**, we won't display reputation lost to deleted questions on your profile unless you explicitly ask for it, and won't display it _at all _to other people (apart from moderators). This was an egregious privacy violation, and we sincerely apologize for not catching it sooner.

**Third**, it should be easier for the community to both delete AND undelete most questions. Previously, it could take hundreds of votes to remove some of these extremely popular questions - that sounds good, but in practice it just meant folks gave up voting and asked moderators to delete for them. Creating more grief for moderators and less democracy was never the intention - from here on out, it will take at least three and at most 10 votes to delete even the most popular questions, and an equivalent number to undelete them.

**Last but not least**, we're experimenting with ways to keep some of the more useful - [or even just fun](http://blog.stackoverflow.com/2010/01/stack-overflow-where-we-hate-fun/) - questions from the site's history _accessible_ in some way. To be clear: most of these are not great examples of questions that should be asked today... But some of them are, quite frankly, brilliant - and losing them entirely just because they aren't a good fit for our strict Q&A format is wrong. For now, we've provided a "Historical Artifact" lock that completely freezes a question and its answers, preventing all further editing, voting, answering, and flagging. It will also remove it from the usual lists of questions on the site while allowing it to remain fully accessible and visible to everyone with a link to it. At the moment, this is a completely manual and moderator-only feature: depending on how it works out, we'll tweak and expand it as time goes on.

These changes are currently in the process of being tested and rolled out across all sites. Please report any bugs on [Meta Stack Overflow](http://meta.stackoverflow.com/).
