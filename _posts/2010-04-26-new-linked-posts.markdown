---
author: jeffatwood
comments: true
date: 2010-04-26 05:45:44+00:00
layout: post
redirect_from: /2010/04/new-linked-posts
hero: 
slug: new-linked-posts
title: New Linked Posts
wordpress_id: 2982
tags:
- company
- community
- design
---


We just added a **Linked** sidebar to the question page.



Here's an example from the current Super User question [Now that MS Money is going away, what are the best competitive options?](http://superuser.com/questions/2769/now-that-ms-money-is-going-away-what-are-the-best-competitive-options)



![](/images/wordpress/superuser-linked-related-1.png)



The **Linked** sidebar is very straightforward: it gathers up any links to this question provided by the community via comments, answers, or questions, and presents them in simple list format on the right-hand side of the question. It's important to note that these links are bi-directional -- that is, if another question links to this one, **the link will be listed on _both_ questions.**



This simple mechanic addresses a slew of meta requests, including:







  * [Link previous questions to newer duplicates](http://meta.stackoverflow.com/questions/40952/link-previous-questions-to-newer-duplicates)

  * [Automatically track referenced questions](http://meta.stackoverflow.com/questions/44643/automatically-track-referenced-questions)

  * [Please Provide a “Table of Duplicates”](http://meta.stackoverflow.com/questions/36366/please-provide-a-table-of-duplicates)

  * [Is there a way to search for posts linked to other posts?](http://meta.stackoverflow.com/questions/40463/is-there-a-way-to-search-for-posts-linked-to-other-posts)




With [Stack Exchange 2.0](http://blog.stackexchange.com/post/518474918/stack-exchange-2-0) in mind, I want to extend this to cross-network links as well (in addition to question migrations, account association, and closing as "belongs on...", etc), but it's more important to kick the tires and get feedback on this simple V1 implementation for now.



I think this highly manual, human-being-entered form of linking questions is complementary to the existing **Related** panel.



![](/images/wordpress/superuser-linked-related-2.png)



How is the **Related** panel generated? I'm glad you asked! Related is a completely machine generated list, using the following criteria:







  * full-text match to **tags** (+10 weight)

  * full-text match to **title** (+5 weight)

  * full-text match to **body** (+1 weight)




I'm open to hearing any ways we can improve this algorithm, but honestly a lot of the "problems" with it are of the garbage in, garbage out variety -- poor tags, poor titles, or poor body text. Anyway, if you think the Related list on a question sucks, _you can do something about it!_







  * **Retag** the post so it has more tags in common with questions it should naturally "group" with. This is the most important criteria, by far, and we provide some [very nice inline retagging tools for experienced users](http://blog.stackoverflow.com/2010/04/new-10k-feature-inline-tagging/) who should (we hope) know best when it comes to the taxonomy of tags.

  * **Retitle** the post so it shares more words in common with the titles of other questions that it is similar to. As I've mentioned probably ad nauseam at this point, people have the [uncanniest knack](http://blog.stackoverflow.com/2008/10/stack-overflow-search-now-51-less-crappy/) of asking multiple, nearly identical questions with almost _zero words in common_. But there's a bright side to this dark cloud: a small tweak to the words used in the titles can help "nudge" questions into more natural groupings.




I don't think there's much value in rewriting a question body, since the Related panel is weighted so heavily towards title and tags. But if the body is extremely short or poorly constructed, that can do serious damage to the related matching algorithm as well -- particularly if the title and tags are too common/popular to narrow the field much.



Anyway, if all else fails, now we have another option -- **just add link(s) in answers, comments, or edits to the question that point out other questions that _should_ be in the Related sidebar and they'll automatically show up in the Linked sidebar.** No matter how much we tweak it, our fancy-shmancy related algorithm is no match for an army of obsessiveknowledgable community members.

