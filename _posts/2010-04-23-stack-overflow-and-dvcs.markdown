---
author: jeffatwood
comments: true
date: 2010-04-23 08:33:30+00:00
layout: post
redirect_from: /2010/04/stack-overflow-and-dvcs
hero:
slug: stack-overflow-and-dvcs
title: Stack Overflow and DVCS
wordpress_id: 2958
tags:
- company
- background
---


As of today, Stack Overflow is now officially using a **distributed version control system**. Specifically, [Mercurial](http://mercurial.selenic.com/), as hosted through [Fog Creek's Kiln service](http://www.fogcreek.com/kiln/).



[![](https://i.stack.imgur.com/RLXF4.gif)](http://www.fogcreek.com/kiln/)



While we weren't _unhappy_ with Subversion, we weren't married to it, and we needed to switch anyway so we can **easily share code with the team in NYC**. There's nothing quite as corrosive to worldwide programming collaboration as being on different source control systems.



If you're new to distributed version control, first you should check out Joel's excellent Mercurial tutorial at [Hg Init](http://hginit.com/).



[![](https://i.stack.imgur.com/F5hYG.png)](http://hginit.com/)



At this point, you may be wondering: **should you switch to a distributed version control system, too?**



I think you should dabble in it, absolutely, as there's no question that it represents the future of all source control. But let's not kid ourselves: the tools are still a bit .. raw. Particularly if you're a GUI-loving wussy girly man like myself. We had gotten a bit spoiled by the excellence and maturity of [TortoiseSVN](http://tortoisesvn.tigris.org/) and [VisualSVN](http://www.visualsvn.com/) on Windows. There are Mercurial equivalents, of course:







  * [TortoiseHg](http://tortoisehg.bitbucket.org/) Windows Explorer shell extension

  * [VisualHg](http://visualhg.codeplex.com/) Visual Studio plugin




But, as I said... _raw_. Raw is definitely the operative word here. DVCS hasn't [crossed the chasm](http://en.wikipedia.org/wiki/Crossing_the_Chasm) yet, so if you buy in now, you're still on the visionary edge of software development. 



[![](https://i.stack.imgur.com/SQ4Dp.png)](http://en.wikipedia.org/wiki/Crossing_the_Chasm)



This can be a fun place to be, as it's where all the innovation is typically happening, but there are ... tradeoffs. Painting in very, very broad strokes -- warning: massive oversimplifications ahead! -- I'd say that:







  1. If you are still using SourceSafe, [get the hell off my lawn](http://www.codinghorror.com/blog/2006/08/source-control-anything-but-sourcesafe.html).

  2. If you are _unhappy_ with your current source control system, definitely begin researching your DVCS upgrade options. No time to get started like the present!

  3. If you are _happy_ with your current source control system, read [Why Git is Better than X](http://whygitisbetterthanx.com/), substituting "my source control system" with X. (While there are differences between Mercurial and Git, the differences are not hugely significant any more; they are basically the Pepsi and Coke of DVCS.) Do you see anything on this list that you feel strongly about? Does anything in this comparison directly address any daily pain points for you and your team? If so, then you should look deeper into DVCS.




There is one thing you do want to watch out for -- eventually, teams adapt their behavior to the software they're using. Without even realizing that they're doing so. **If I had to pick one word to summarize the benefits of DVCS, I'd say that word is _flexibility_.** DVCS is way more flexible than centralized source control. So if you learn some DVCS, you might just find that it unlocks a new, more productive way for your team to "get things done", as they say.

