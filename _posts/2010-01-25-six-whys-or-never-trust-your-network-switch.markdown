---
author: jeffatwood
comments: true
date: 2010-01-25 18:13:43+00:00
layout: post
redirect_from: /2010/01/six-whys-or-never-trust-your-network-switch
hero: 
slug: six-whys-or-never-trust-your-network-switch
title: Six Whys - Or, Never Trust Your Network Switch
wordpress_id: 2652
tags:
- company
- background
- server
---


Remember [Joel Spolsky's fine article "Five Whys"?](http://www.joelonsoftware.com/items/2008/01/22.html) Sure you do! It contained this paragraph:





<blockquote>
Michael spent some time doing a post-mortem, and discovered that the problem was a simple configuration problem on the switch. <strong>There are several possible speeds that a switch can use to communicate (10, 100, or 1000 megabits/second). You can either set the speed manually, or you can let the switch automatically negotiate the highest speed that both sides can work with.</strong> The switch that failed had been set to autonegotiate. This usually works, but not always, and on the morning of January 10th, it didn't.
</blockquote>





Guess what we woke up this morning (well, you don't really "wake up" at 3 AM, unless you're a [vampire](https://i.stack.imgur.com/KIpa2.jpg), but you know what I mean) to find?



[![](/images/wordpress/switch-autodetect-fail.png)](/images/wordpress/switch-autodetect-fail-large.png)



My, that looks familiar. Where have I read about this before? Oh yes, the article I just quoted _twenty seconds ago!_



To be fair to NetGear, we never had any port speed negotiation problems with our old 8-port GS108T switches, but [we recently upgraded](http://blog.stackoverflow.com/2009/12/stack-overflow-rack-glamour-shots/) to the 24-port GS724T. I guess this model is more sensitive and brooding, or something.



Geoff "the Malice from Corvallis" Dalgas was all over this one and got [all the web tier servers in our network](http://blog.stackoverflow.com/2010/01/stack-overflow-network-configuration/) set to a fixed, _non-negotiable_ ethernet speed of 1 Gigabit.



And I ask myself ... why? why? why? why? why? 



It's because I can't read, apparently, and _that's_ why.

