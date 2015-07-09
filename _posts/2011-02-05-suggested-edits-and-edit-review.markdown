---
author: jeffatwood
comments: true
date: 2011-02-05 20:26:12+00:00
layout: post
redirect_from: /2011/02/suggested-edits-and-edit-review
hero: https://i.stack.imgur.com/TuutP.jpg
slug: suggested-edits-and-edit-review
title: Suggested Edits and Edit Review
wordpress_id: 7114
tags:
- company
- community
- design
- reference
- stackexchange
---

The Stack Exchange engine draws inspiration from a number of sources.

![stackoverflow-venn-diagram](/images/wordpress/stackoverflow-venn-diagram.png)

We continue to be great admirers of Wikipedia, but we've always missed out on one crucial aspect of their system: we never allowed anonymous users to edit content. No, that required [earning privileges through participation](http://blog.stackoverflow.com/2010/10/membership-has-its-privileges/) -- specifically, the retag privilege at 500 reputation and the full editing privilege at  2000 reputation. 

Well, as of today, I'm proud to announce that we allow anonymous and new users to edit content in our system! The surface area of this change is _huge_ -- it means **the millions of drive-by anonymous users that visit our sites every day can submit an improvement or correction.** Furthermore, you can earn up to +1000 reputation for submitting valid edits. 

We do currently limit anonymous edits to questions and answers more than 10 minutes old (and with some different caveats, wiki pages too). Millions of posts now have that ubiquitous edit link at the bottom. Click it, and you'll be sent to the standard editing interface, albeit with a small disclaimer at the top.

![](/images/wordpress/anon-edit-warning.png)

There are a few additional requirements when submitting an edit suggestion:





  * You must enter a reasonable comment describing your edit.

  * To prevent noise and friction, your change must be more than 6 characters.


After the edit is submitted, it goes into an edit suggestion queue of a fixed size. (If the queue is currently full, we temporarily stop accepting edits.) Users who have earned the editing privilege can now vote to accept -- or reject -- the suggested edit. There are two ways to view suggested edits:



  1. Suggested edits for a post are always visible on the post itself. If edits are pending on a particular post, the post's **edit menu** will have a counter next to it.  
  
![](/images/wordpress/pending-edit-post-menu.png)  
  
Clicking on the edit from a post will show it inline in a floating panel, so you aren't interrupted.  
  


  2. If you have 10,000 reputation, a **counter will appear at the top of the page** showing the size of the edit suggestion queue (if it's greater than zero, of course). Clicking this counter will take you to a [new `/review` tab](http://blog.stackoverflow.com/2011/01/how-to-say-thanks-in-an-answer/) that lists _all_ suggested edits in the queue.  
  
![](/images/wordpress/suggested-edits-indicator.png)  



Once you click on a suggested edit, you get a diff view that shows you the original post on the left, and the edited version on the right. All additions and deletions are highlighted. You can also toggle between HTML and Markdown views via the toolbar buttons on the left.

![](/images/wordpress/edit-suggestion-diff.png)

From here, you can approve or reject the edit. **When an edit is approved, the editor receives +2 reputation** -- up to a maximum of +1000 total per user. Contributing good edits is now a nice way to gain reputation and bootstrap less active users into full members of the community.

To keep this post a sane and readable size, I have glossed over a lot of the other rules that we have in place to handle edge conditions with edit suggestions. If you have further questions or want lots more detail, _please_ [read Sam's meta post](http://meta.stackoverflow.com/questions/76251/how-does-peer-review-for-edits-work/76284#76284) before leaving a comment here. 

So, in summary:





  * Anonymous, unregistered, and 1 reputation users may now submit suggested edits to most content on our sites.

  * Experienced users with 2,000 reputation or more can review these edits and approve or reject them.

  * When registered users' edits are accepted, they earn +2 rep, up to a maximum of +1000.


I've always _wanted_ to extend some form of editing privileges on our site to everyone on the internet. I just apologize that it took us over two years to figure out how to do it!
