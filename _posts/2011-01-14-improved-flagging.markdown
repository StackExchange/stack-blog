---
author: jeffatwood
comments: true
date: 2011-01-14 09:54:06+00:00
layout: post
redirect_from: /2011/01/improved-flagging
hero: 
slug: improved-flagging
title: Improved Flagging
wordpress_id: 6779
tags:
- company
- community
- design
---

We've had a [Craigslist-inspired post flagging system](http://blog.stackoverflow.com/2009/04/raising-a-red-flag/) in place since the middle of 2009. But we haven't improved it much since then, and given the recent influx of traffic, we are struggling to keep up while [educating question askers](http://blog.stackoverflow.com/2010/10/asking-better-questions/) and [educating answerers](http://blog.stackoverflow.com/2011/01/how-to-say-thanks-in-an-answer/). There's no way even the most avid community moderator could possibly keep tabs on 2,500+ questions and 7,500+ answers per day. In order to keep our community tidy and on topic, we need _everyone_ to help us flag the unusual stuff!

The concept is simple: if you are a registered user with at least 15 reputation, **when you see something bad happening on the site -- _flag it!_** That's why every post has a small flag link underneath it.

![flag this post for serious problems or moderator attention](/images/wordpress/flag-post-link.png)

We felt the old flagging dialog was a bit too … intimidating. Flags are not to be taken lightly, yes, but they shouldn't be scary, either. So in our redesign, we tried to create **a kinder, gentler moderator flag dialog** -- one that explains typical flag scenarios in a bit more detail.

![I am flagging this because...](/images/wordpress/i-am-flagging-this-because1.png)

(the appearance of the flag dialog is highly context sensitive, and varies both based on the post and the reputation level of the user who clicked the flag link. So what you see when you click flag may differ slightly from what's pictured above.)

Clicking each option expands some explanatory text that provides context:



> **it needs ♦ moderator attention**<br/>
>
A few canned common reasons, including "low quality", "not an answer" (for answers), and a 500 character (expanded from 150 characters) area for anything else you'd like to let the moderators know about.

> **it doesn't belong here**<br/>
>
(generate a mod flag using [any existing close reason](http://blog.stackoverflow.com/2010/10/new-question-migration-paths/) as a template)

> **it is spam**<br/>
>
This question is effectively an advertisement with no disclosure. It is not useful or relevant, but promotional.

> **it is not welcome in our community**<br/>
>
This question contains content that a reasonable person would consider offensive, abusive, or hate speech.




One thing we realized is that the mod flag dialog ends up being training wheels for closers. That is, users who do not yet have the right to cast a close vote (earned at 3k reputation), but do have strong feelings that a given question does not belong based on our [standard set of close reasons](http://blog.stackoverflow.com/2010/10/new-question-migration-paths/). You know, off-topic, duplicate, too localized, etc. We welcome anyone who is willing to help, so we made this easier.

We also show how many remaining flags you get of each type per day in the dialog itself. In order to encourage more flagging, we have **increased the number of general moderator flags available** to 10 per day, plus one per every 1k of reputation, up to a maximum of 100. So if you have 15k reputation, you now have 25 moderator flags to use each day as you see fit. The existing spam and offensive flag allocation of 5 per day has not changed.

Another change we've instituted, [based on the popular Newgrounds flash game portal](http://www.newgrounds.com/lit/faq/), is the concept of "flag reliability". If a particular user keeps moderator flagging for reasons that we consider invalid, their flag weight decreases. And for those users who continually flag reliably, their flag weight _increases_.



>
Due to the large amount of abuse to Newgrounds by malicious users we have implemented features that allow users to help police the site. A user's Whistle level can go up or down depending on how accurately the user flags questionable content. If a user abuses their use of the whistle to flag portal entries and reviews that do not violate our terms they will lose points and eventually be stuck with a broken whistle.

>
Users with broken whistles have no effect on anything they attempt to flag. However, users with a broken whistle may still receive negative or positive points so they can either dig themselves a deeper hole or try to regain a normal level and effectively flag entries once again. Users who blow the whistle accurately many times can increase their whistle level to bronze, silver, gold or deity levels. Users with a higher whistle level pull more weight when they use it.




We need community flagging to work, and work _well_, if we want to have any hope of scaling without losing the fundamental level of quality that we as a community have enjoyed so far. Rest assured we haven't just been working on the flag front end -- we've made a ton of improvements to the moderator and 10k tools pages on the back end to assist in handling this increased volume of flags.

The bottom line is this: if you see anything on the site that you think is **serious enough for a moderator to take a peek -- _flag it!_**
