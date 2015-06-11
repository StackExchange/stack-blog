---
author: jeffatwood
comments: true
date: 2009-04-16 09:20:13+00:00
layout: post
redirect_from: /2009/04/comments-now-with-flags-and-votes
hero: 
slug: comments-now-with-flags-and-votes
title: 'Comments: Now with Flags and Votes'
wordpress_id: 1066
tags:
- company
- community
- design
---


In tonight's code push, we added the ability to **vote for comments**, and **flag comments if they are inappropriate**.



![stackoverflow-comment-flags-votes](/images/wordpress/stackoverflow-comment-flags-votes.png)



Some ground rules:







  * There is no downvoting of comments, only upvotes.

  * Comment votes do not affect comment sort order.

  * No reputation of any kind is earned or lost from comment votes.

  * Each user gets 5 comment flag votes, and 30 comment upvotes, per day.

  * If a comment is flagged by enough users it will be auto-soft-deleted. There is no penalty for this.. _yet_. Flagged comments will be surfaced to moderators, so if you have a problem with a comment, flag it.

  * You can always delete your own comments. We are removing the ability for users with 5,000 rep to delete comments on their posts -- flagging should now be sufficient for this purpose.




(your best comments will also show up in your user profile page, but this isn't implemented yet.)



This is setting the stage for some of the comments to be visible on the page at all times, _without_ having to click the comments button. Ideally, the upvoted comments (if any) will be viewed as 'best of the thread' and loaded first on the page.

