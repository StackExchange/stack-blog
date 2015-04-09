---
author: jeffatwood
comments: true
date: 2010-03-21 22:18:19+00:00
layout: post
redirect_from: /2010/03/the-great-reputation-recalc-begins
slug: the-great-reputation-recalc-begins
title: The Great Reputation Recalc Begins
wordpress_id: 2831
tags:
- company
- background
- community
---


As previously discussed in [Important Reputation Rule Changes](http://blog.stackoverflow.com/2010/03/important-reputation-rule-changes/), we are now beginning site-wide reputation recalculations on Stack Overflow, Server Fault, and Super User. You may see some changes in your own reputation, along with changes in other users' reputation.



In addition to **rebalancing question upvotes as +5 instead of their old value of +10**, we also fixed the following minor bugs in the reputation system:







  * accepted answers and bounties were only _partially_ immune to the rep cap before depending on the time of day you earned them, but they are _fully_ immune now.

  * upvotes can now "replace" missing rep lost to downvotes, up to the +200 daily reputation cap.




If you have questions about your rep you can run a report detailing exactly how it is calculated; see [How do I audit my reputation?](http://meta.stackoverflow.com/questions/43004/how-do-i-audit-my-reputation/)






Do bear in mind that the reputation score is _denormalized_, meaning there are external events that happen on the trilogy sites which can affect your reputation, but some of them can't take effect (due to effects of chronology) until your reputation is recalculated from scratch:







  * Questions and answers sometimes get deleted; votes on deleted posts do not count toward your reputation.

  * Users sometimes get deleted. When a user is deleted, all their votes are deleted, too. Some of those votes may have been on your posts.

  * Questions get migrated from one site to another, which means any votes on that question and all of its answers are effectively deleted from the source site (but will now count toward your rep on the destination site, assuming you have associated accounts between sites).

  * Posts can automatically change to community wiki mode, which means any new votes added _after_ the community wiki date no longer count towards your reputation score. This doesn't actually cause a problem with chronology of votes, but I am mentioning it here for completeness and to emphasize that votes on community wiki posts don't generate reputation for anyone.




While reputation is an important concept on our sites, as documented in the [/faq](http://stackoverflow.com/faq), it isn't meant to be an extremely scientific and to-the-second accurate number. **You should always expect a small amount of normal flux and variation around your reputation score, which will be reconciled through periodic recalculations like this one.**



That said, we believe the rebalancing and bugfixes are necessary changes and will ultimately result in rep being a stronger, more reliable, more practically useful number than it was before.

