---
author: jeffatwood
comments: true
date: 2008-10-25 06:59:28+00:00
layout: post
redirect_from: /2008/10/script-responsibly
slug: script-responsibly
title: Script Responsibly
wordpress_id: 140
tags:
- company
- community
---


We've noticed there are a number of users running a script that **retrieves their _uncompressed_ user page multiple times per second**, producing an absurd amount of network traffic. Fortunately, we do cache the user page if the requests come in anonymously, so the database load was not significant.



However, this behavior is irresponsible and unacceptable, so **we will permanently ban any IP we see doing this**. We've already banned about a dozen IPs for this, and we will continue to do so. If you persist, your account will be permanently deleted. We might even lay down long term IP block bans if necessary.



We would prefer that you use our RSS feeds, or lobby us to improve our RSS feeds, rather than scrape Stack Overflow so aggressively.

