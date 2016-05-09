---
author: spolsky
comments: true
date: 2011-04-12 16:15:46+00:00
layout: post
redirect_from: /2011/04/stack-exchange-traffic-still-growing
hero: 
slug: stack-exchange-traffic-still-growing
title: Stack Exchange Traffic Still Growing
wordpress_id: 7778
tags:
- company
- stackexchange
- community
---

We had a crazy month last month, growing about 18% across the board. Today I was excited to log onto Quantcast, which measures our traffic, to see that for the first time, our network rank now fits into a single unsigned byte!

[![](https://i.stack.imgur.com/tZDdN.png)](http://www.quantcast.com/p-c1rF4kxgLUzNc#)

There are several different ways we measure our traffic, and each of them gets vastly different results. For example, Quantcast puts us as 14.1 million people a month (globally). They measure that using a little JavaScript widget you'll find at the bottom of the HTML on every one of our pages.

[![](https://i.stack.imgur.com/nNGDw.png)](http://www.quantcast.com/p-c1rF4kxgLUzNc#)

Quantcast doesn't provide very robust measurement tools, so we use Google Analytics ("GA") for internal tracking. GA has great reporting features, but there is one major difference in the methodology: if the same person visits stackexchange.com and superuser.com, for example, because of the way cookies work, GA considers that to be two unique visitors. So with GA we end up "overcounting" people if they visit more than one of our domains. We decided that was OK for our own internal tracking. Someone who visits superuser.com AND serverfault.com is worth "twice as much" as someone who only visits one site.

Also, for reasons we have never figured out, Google Analytics just gets larger numbers than Quantcast. Right now GA is showing more visitors (15 million) on stackoverflow.com _alone_ than Quantcast sees on the whole network:

![](/images/wordpress/GA-Visitors1.png)

Why? I don't know. Either Google Analytics loses cookies sometimes, or Quantcast misses visitors. Counting is an inexact science.

As I said, for our own purposes, we decided to sum up all the GA visitors numbers on the six top level domains we operate, which puts as at about 24 million unique visitors.

The one source that's absolute, complete rubbish is compete.com. They seem to think that we only have 659,000 visitors to stackoverflow.com and that we're shrinking. This "data" is so utterly and completely out of whack with every other source that actually measures our traffic that I just don't know what to make of it.

[![](https://i.stack.imgur.com/g2AUD.png)](http://siteanalytics.compete.com/stackoverflow.com/)

The fact that they manage to be off by a factor of 22, and that they think we're shrinking when everyone else (Quantcast, Google Analytics, even Alexa with their goofy toolbar methodology) has measured us as growing, makes me wonder just what the heck is going on at compete.com. To put it politely.
