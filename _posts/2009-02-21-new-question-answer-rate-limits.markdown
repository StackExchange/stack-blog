---
author: jeffatwood
comments: true
date: 2009-02-21 10:05:09+00:00
layout: post
redirect_from: /2009/02/new-question-answer-rate-limits
hero: 
slug: new-question-answer-rate-limits
title: New Question / Answer Rate Limits
wordpress_id: 731
tags:
- company
- community
- design
---


Stack Overflow is somewhat unique in that we encourage participation of essentially anonymous, random programmers. Our idea is to **radically reduce the bar for participation**, and take one giant leap of faith:





## Trusting our users.





Well, most of them, anyway. We have the typical hurdles in place to prevent bots from gaming our system: JavaScript and "too fast to be human" triggered CAPTCHA. This works in conjunction with community use of the offensive flag, which auto-deletes any post after 5 users tag it "offensive", and traditional downvoting. This system has been fairly effective to date. We've only had a handful of spam and trolling, and it's all been handled with a minimum of fuss or impact to the typical Stack Overflow user.



That is, until tonight, when we were hit by a malicious user of a type we haven't seen before:



![stack-overflow-malicious-user](/images/wordpress/stack-overflow-malicious-user.png)



In a way, I suppose I should thank this user for doing this on a Friday night when traffic levels are pretty low. Here's my official response:



![vandalized-2pac](/images/wordpress/vandalized-2pac.jpg)



How does it feel when _we_ vandalize _you_, Mr. [Tupac Shakur](http://en.wikipedia.org/wiki/Tupac_Shakur)? Eh? Not so good, I bet!



But in all seriousness, the surprising thing here is that this user was _not_ a bot. Our anti-bot stuff would be challenging to get around. **It was an actual human being, entering the CAPTCHAs, cutting and pasting text into every post.** We verified this by looking at the logs, and the timestamps on the entries. The times are slow and variable, not at all what you'd expect to see from a bot.



Wow. How bored is _this_ guy? (And yeah, it's always a guy, who are we kidding.) I'm not going to name any names, here, but we tracked all the IPs that this activity came from and they were all geographically similar.



![the-country-which-shall-not-be-named](/images/wordpress/the-country-which-shall-not-be-named.jpg)



As if I needed _another_ reason to hate Kangaroos and Koalas.



I've been thinking for a while that we should have more stringent throttles on new users, [rate limits for asking and answering questions](http://stackoverflow.uservoice.com/pages/general/suggestions/126742-limit-the-rate-at-which-a-user-can-submit-questions). This human spam storm was my excuse to implement them. So, effective immediately...





## If you're a new user, with reputation below 100:










## 
  1. You may only post 1 question every 20 minutes




## 
  2. You may only post 1 answer every 3 minutes






This is tracked at the IP address level, so multiple posts from the same IP, even as different "users", will still be blocked.



So _take that, Australian wanna-be Tupac Shakur!_





