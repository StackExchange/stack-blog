---
author: chris
comments: true
date: 2014-04-22 16:00:07+00:00
layout: post
redirect_from: /2014/04/putting-the-community-back-in-wiki
hero: https://i.stack.imgur.com/IGh2C.jpg
slug: putting-the-community-back-in-wiki
title: Putting the Community back in Wiki
wordpress_id: 14660
tags:
- company
- announcement
- background
- community
---

Ever seen this diagram?

![](http://cdn.sstatic.net/Img/about/venn-diagram.png)

That's the visual [elevator pitch](http://en.wikipedia.org/wiki/Elevator_pitch) for Stack Exchange. We were the little dot in the middle, a potent mix of useful traits from other tools, a wiry mutt full of hybrid vigor. The purpose of this blend was to allow and _encourage_ the construction of a library of solutions, by providing communities with the tools they needed to share their experiences and challenges with others who might struggle with the same issues.

The diagram illustrated where we stole drew inspiration for the design of those tools, and their influence occasionally shows up in the results. Sometimes, a question will end up more like a wiki, other times more like a blog, other times more like a discussion. Because of these roots, we’ve never been too stuck on the _[purity](https://www.youtube.com/watch?v=Qr2bSL5VQgM)_ of the idea of Q&A: over time, when communities using this software needed to deviate a bit, we’ve tried to build in features to give them what they needed to help solve more problems:



	
  * Users wanted to “blog” about questions where they’d already found solutions, so we introduced [self-answered questions](http://blog.stackoverflow.com/2012/05/encyclopedia-stack-exchange/)

	
  * People occasionally found themselves needing ongoing discussion to solve a problem, so we added [chat forums](http://blog.stackoverflow.com/2010/10/stack-overflow-chat-now-live/)


...And sometimes, folks realized that they needed a _bunch_ of people to contribute meaningfully to create a post. Not just the collaborative, minor editing that occurs on most questions here; these were cases where multiple users needed to pitch in _just to do a topic justice._ But there were two points of friction:



	
  1. Originally, most users couldn’t edit others’ posts, (we didn’t have suggested edits yet)

	
  2. It’s hard to ask people to put a lot of effort into creating something together when the asker is going to keep all the credit _and_ all the reputation. I don’t care about rep and attribution when I’m self-motivated to improve a post I come across, but it feels different when someone outright asks me to pitch in while intending to keep _all the fake internet points for themselves!_


That’s where Community Wiki came in - it killed those friction points by eliminating rep generation from those posts and lowering the bar on who could edit them. Which made it much easier for people who wanted to create collaborative, ensemble works - [true community owned _and_ edited resources](http://blog.stackoverflow.com/2011/08/the-future-of-community-wiki/).

But, much like dynamite, this well-intentioned invention was quickly weaponized into an instrument of destruction. Our big mistake: thinking we could systematically _detect_ when such collaboration was happening, and automatically convert those posts to Community Wiki. It sounded awesome - “we’ll help you collaborate _even more!_ When we see enough editors, we’ll save you the trouble of making it community wiki yourself and do it for you…”

**Yeah, we are dumb.**


## In which we stop being dumb


By using ridiculously simplistic heuristics to detect these scenarios, we turned what should have been an act of generosity - an invitation to the community to participate in building a shared resource - into a hidden pitfall for the unwary. Too many helpers? _NO ONE GETS CREDIT!!!_ It was a system that converted helpfulness and generosity into a slap in the face - _from a robot._

![](https://i.stack.imgur.com/BIcgo.png)

Therefore, **we have removed all automatic Wiki conversion triggers from the software.** No longer will answers with more than some arbitrary number of edits, or questions with more than a page of answers suddenly lose their owners. To handle those rare situations where unusual activity levels may indicate _misuse_, we’ve added some new moderator flags in these scenarios: they can respond _when necessary_ by closing or locking the post - but when there is no fire behind the smoke, they can silently dismiss the flag without disruption.


## The once again future of Community Wiki


An author can still apply the status manually when posting or when editing their own answer, and moderators retain the ability to apply it when they deem it truly necessary (for instance, a question attracting _very_ large numbers of partial answers can be a sign of a topic that _wants_ to be a wiki). For the most part, we’ve turned it back into something that _you can choose to use in cases where it lets you work together to create something wonderful:_



	
  * [Compiling a canonical reference](http://superuser.com/questions/100360/how-do-i-get-rid-of-malicious-spyware-malware-viruses-or-rootkits-from-my-pc)

	
  * [Consolidating the knowledge of the community](http://serverfault.com/questions/496139/something-is-burning-in-the-server-room-how-can-i-quickly-identify-what-it-is/496284#496284)

	
  * [Encouraging the ongoing, active maintenance of a changing answer](http://stackoverflow.com/questions/1253683/what-browsers-support-html5-websocket-api/2700609#2700609)


Sometimes these are single, collaborative answers, other times questions where all contributions must be made in the form of edits. In _all_ cases, the results are clearly that of a sum greater than the whole of its parts, a true _community_ project.

![](https://i.stack.imgur.com/3nTI3.png)
_source: [Wikimedia Commons](http://commons.wikimedia.org/wiki/File:Barn_raising_in_Lansing.jpg)_

Collaboration isn’t a rare thing on our network - the whole system, from posting and editing to voting to moderation, is based on the interaction of multiple users to produce a final product. Community wiki is for a special scenario, something built not by the expertise of one individual, then improved or iterated on by a few others, but rather something created by the concerted efforts of _the community as a whole._
