---
author: jeffatwood
comments: true
date: 2011-09-23 20:00:12+00:00
layout: post
redirect_from: /2011/09/bounty-reasons-and-post-notices
hero: 
slug: bounty-reasons-and-post-notices
title: Bounty Reasons and Post Notices
wordpress_id: 9899
tags:
- company
- community
- design
---

It's been a little over a year since [our last improvement to the bounty system](http://blog.stackoverflow.com/2010/06/improvements-to-bounty-system/). Question bounties have been working well enough that we're comfortable encouraging even _more_ use of the bounty system.

We used to limit people to one question bounty at a time, but now you can have up to **three simultaneous question bounties**. We also show the history and number of bounties you've started or participated in on your user page, on the **bounties tab**.

![](/images/wordpress/user-page-bounty-tab.png)

Upon further reflection, we realized that it can be difficult to tell exactly what a question bounty is _for_. That is, what is the bounty owner -- who may or may not be the question owner -- looking for in the answers to this question? What's the intent of this bounty? How will it be awarded? So we added a choice of **bounty reasons** that explain _why_ the bounty exists:



> **Authoritative reference needed**

> Looking for an answer drawing from credible and/or official sources.

> **Canonical answer required**

> The question is widely applicable to a large audience. A detailed canonical answer is required to address all the concerns.

> **Current answers are outdated**

> The current answer(s) are out-of-date and require revision given recent changes.

> **Draw attention**

> This question has not received enough attention.

> **Improve details**

> The current answers do not contain enough detail.

> **Reward existing answer**

> One or more of the answers is exemplary and worthy of an additional bounty.




Beyond these standard reasons, which we think are typical and should work for most types of question bounties, you can also enter some **optional, additional custom text** that describes in more detail what you want from the bounty. Both are displayed at the bottom of the bounty notice to help explain what's going on, and how you can potentially earn the bounty:

![](/images/wordpress/bounty-reason.png)

There have also been a few other minor tweaks to bounties:





  * To assist forgetful bounty owners, there is a new **24 hour grace period** at the end of every bounty. During this grace period, the question will not be featured, but the bounty can still be awarded at any time.

  * To discourage overly promotional bounties, if you are starting a bounty on a question you yourself have answered, the minimum rep cost is 100, increased from the standard 50.

  * To prevent "infinite" bounty periods, multiple bounties started on the same question by the same user double in cost every time. So if the first bounty is 50 rep, the next will be 100, then 200, then 400, then the maximum.

  * The **featured tab** on the homepage gives priority to larger bounties. The last 24 hours of the bounty period are still ordered purely by time of bounty end, but up until then the larger the bounty, the higher your question will appear on the featured tab.


We liked this idea of explanatory text associated with bounties so much, we extended it to also apply as a general "post notice" to locked questions like [this one on Stack Overflow](http://stackoverflow.com/questions/1089327/what-programming-practice-that-you-once-liked-have-you-since-changed-your-mind-ab), and we allow moderators to apply (in some rare cases) arbitrary post notices to individual questions and answers, as you can see [on Skeptics](http://skeptics.stackexchange.com/annotated-posts?tab=noticed).

Enjoy these improvements to the bounty system. It's our hope that more bounties will be used to improve questions and make each Stack Exchange site an even better resource for getting expert answers to your questions -- whether you asked them or not!
