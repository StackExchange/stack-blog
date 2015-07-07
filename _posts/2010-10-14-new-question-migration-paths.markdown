---
author: jeffatwood
comments: true
date: 2010-10-14 08:39:27+00:00
layout: post
redirect_from: /2010/10/new-question-migration-paths
hero: 
slug: new-question-migration-paths
title: New Question Migration Paths
wordpress_id: 5633
tags:
- company
- design
- serverfault.com
- stackexchange
- superuser.com
- community
---

Several [Area 51 sites](http://area51.stackexchange.com/) have made it from being mere proposals to vibrant, thriving websites.

![](/images/wordpress/new-public-sites.png)

Namely, [webapps](http://webapps.stackexchange.com), [gaming](http://gaming.stackexchange.com), [ubuntu](http://askubuntu.com), [webmasters](http://webmasters.stackexchange.com), and very soon, [cooking](http://cooking.stackexchange.com).

And we're about to have a heck of a lot more sites come out of beta. Thus, we need to handle migration of questions from site to site in a more elegant way than we do now.

Why? Well, **sometimes questions are asked that _just don't belong_**. In the spirit of preventing broken windows, we like to vote to close these questions so sites can stay tidy, useful, and on topic. We've more or less settled on the following standard close reasons:



>
**exact duplicate**
This question covers exactly the same ground as earlier questions on this topic; its answers may be merged with another identical question.


> 
> **off-topic**
Questions on Stack Overflow are expected to generally relate to programming or software development in some way, within the scope defined in the faq.
> 
> 

>
**not constructive**<br/>
This question is not a good fit to our Q&A; format. We expect answers to generally involve facts, references, or specific expertise; this question will likely solicit opinion, debate, arguments, polling, or extended discussion.

>
**not a real question**<br/>
It's difficult to tell what is being asked here. This question is ambiguous, vague, incomplete, overly broad, or rhetorical and cannot be reasonably answered in its current form.

>
**too localized**<br/>
This question would only be relevant to a small geographic area, a specific moment in time, or an extraordinarily narrow situation that is not generally applicable to the worldwide audience of the internet.



We realized that **off-topic** is the launching point for deciding "if this question doesn't belong here .. where _does_ it belong?" 

We've consolidated and enhanced off-topic to better cover this scenario. Now, when you click off-topic as a close reason, we also present possible migration paths -- that is, other sites in our network that might work for these wayward off-topic questions.

![](/images/wordpress/new-offtopic-dialog.png)

Now, we are only "unlocking" migration paths that have some history of actually happening on the site. In other words, the odds of a [bicycles](http://bicycles.stackexchange.com) or [cooking](http://cooking.stackexchange.com) question being accidentally asked on Stack Overflow is so vanishingly slim that we don't need to put it in the dialog or even allow it to happen at all. Whereas I constantly regretted the fact that we had amazingly good webmaster questions asked ALL THE TIME on Stack Overflow that simply had _nothing to do with programming_, and had to be closed as off-topic. This pained me.

No longer. I can now begin migrating questions tagged [seo] on Stack Overflow -- many of them closed, and rightly so -- to Webmasters, where they are totally _on_-topic! And of course, once the migration stubs are deleted, the question will properly 301 redirect to the destination site.

We're still working out all the "which sites can migrate questions to where" path definitions, and we are open to suggestions. But before you do, there are a few ground rules:





  * The default is **plain, no migration off-topic**. That's by design. If there is ever any doubt in your mind about where a question belongs, the safest option is to vote it off-topic and let it remain on the site. Please don't vote for a migration unless you feel strongly about it.

  * It takes 5 close votes to close a question and there _must_ be consensus for a migration to occur. If there is no consensus, the question remains on the site and is closed as off-topic. This is new, and should help with some of the inappropriate accidental migrations we've seen in the past.

  * Questions can never be migrated _out_ of a meta. Metas are like black holes: questions go in, but they do not come out. This is by design and intentional.

  * We don't want too many choices in the off-topic dialog. There's a practical maximum limit of about six target sites -- ideally less. Every time we present that off-topic dialog we are asking our community members to _think_ about where this question belongs, and having too many choices leads to analysis paralysis. There should be a few clear migration targets, and beyond that ... flag it for moderator attention if it's so doggone exceptional!


If you'd like to make a case that a migration path should be unlocked between two sites -- show us examples of those questions being closed as off-topic on the site.

And, really, it's OK that there are sometimes grey areas between websites. I am a programmer, and I am a webmaster, too. The world is a very analog place and there's room for a lot of variants of questions for particular audiences. Ultimately, it's our goal to cultivate friendly relationships between compatible sites -- migration is a way for communities to _support_ each other by cross-pollinating some questions and users in these related disciplines.
