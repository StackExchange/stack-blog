---
author: jeffatwood
comments: true
date: 2009-09-04 21:40:23+00:00
layout: post
redirect_from: /2009/09/load-balancing-stack-overflow
hero: 
slug: load-balancing-stack-overflow
title: Load Balancing Stack Overflow
wordpress_id: 1929
tags:
- company
- server
---


Starting right now, we will be load balancing the Stack Overflow servers -- going from one web tier server, to two. This means you may end up on a different server depending on what [HAProxy](http://haproxy.1wt.eu/) decides the hash of your IP address is.



This _shouldn't_ cause any problems, but ...



![Failure is always an option](/images/wordpress/il_fullxfull.73753810.jpg)



If you notice anything unusual, feel free to report it on [meta.stackoverflow.com](http://meta.stackoverflow.com). We'll be monitoring closely.

