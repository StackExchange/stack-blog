---
author: jeffatwood
comments: true
date: 2010-08-29 21:38:56+00:00
layout: post
redirect_from: /2010/08/stack-overflow-sponsors-haproxy
slug: stack-overflow-sponsors-haproxy
title: Stack Overflow Sponsors HAProxy
wordpress_id: 4929
tags:
- company
- announcement
- server
---


As you can see from [our network configuration](http://blog.stackoverflow.com/2010/01/stack-overflow-network-configuration/), HAProxy is a much beloved part of our infrastructure. [Willy Tarreau](http://serverfault.com/users/29626/willy-tarreau), the author, has been extremely responsive and helpful to us in the past.



So when we reached a surprising dead-end in our quest to find a reverse proxy that could block HTTP clients using too much bandwidth, or too many connections, we were happy to approach Willy with the idea of **sponsoring this feature in HAProxy**.



I'm pleased to announce that this new HAProxy feature we sponsored is [now available to everyone](http://haproxy.1wt.eu/) as of August 26th!





>
Geoff Dalgas and Jeff Atwood described to me in great details what they needed to do : perform request throttling per IP address, possibly based on various criteria, in order to limit risks of service abuse. That was very interesting, because that feature was being thought about for about 4 years without enough time to completely develop it …

> 
> 
…

> 
> 
The last words naturally go to the really cool guys at Stack Overflow. It's very nice to see some sites and companies involve time and money and take risks to make Open Source products better. Of course they benefit from this work, but at no point during the whole development did they try to reduce the focus to their specific needs, quite the opposite. From the very first exchanges, their goal clearly was to make the product better, and that must be outlined. That's now achieved and I really appreciate their involvement. Thank you guys!






If you'd like more details, Kyle Brandt, our sysadmin extraordinaire, documented the details of how this new HTTP connection and bandwidth limiting feature works [over at the Server Fault Blog](http://blog.serverfault.com/post/1016491873/better-rate-limiting-for-all-with-haproxy). Kyle also worked extensively with Willy to make sure everything went smoothly, and it's a credit to both of them, because it absolutely did. This big new feature worked more or less as advertised right out of the gate.



We hope to be able to sponsor more open source projects in this manner. Our specific goal is to _"make the internet a better place to get expert answers to your questions"_, but I believe this is still secondary to our primary goal: **make the internet better**. And having a freely available open source reverse proxy that lets you run a site of our size (top 500 on the internet [by some accounts](http://www.alexa.com/siteinfo/stackoverflow.com)) without being accidentally undermined by abusive or poorly written HTTP clients, is a win for not just us -- but everyone!

