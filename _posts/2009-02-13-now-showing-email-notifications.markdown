---
author: jeffatwood
comments: true
date: 2009-02-13 10:18:54+00:00
layout: post
redirect_from: /2009/02/now-showing-email-notifications
hero: 
slug: now-showing-email-notifications
title: 'Now Showing: Email Notifications'
wordpress_id: 654
tags:
- company
- design
- community
---


We just implemented a **basic form of email notifications**, which (mostly) closes our [highest voted UserVoice request](http://stackoverflow.uservoice.com/pages/general/suggestions/18883-subscribe-unsubscribe-to-questions-rss-feeds).



If you...







  1. Tick the option to allow emails on your user page preferences

  2. Provide us a valid email address in your user settings

  3. Haven't been to the Stack Overflow website in at least 7 days

  4. Have at least one comment/answer response to you in that time frame




You'll get an **automatic weekly summary of any responses to your questions and answers** in your email inbox.



![stackoverflow-email-summary](/images/wordpress/stackoverflow-email-summary.png)



We include the first 300 characters of every response in that timeframe. [Email HTML formatting is incredibly primitive](http://www.campaignmonitor.com/css/), so we tried to keep it HTML 3.0 simple. We also set up a [Reverse PTR record](http://aplawrence.com/Blog/B961.html) with our ISP so hopefully our emails won't get flagged as spam.



Two notes on this.







  1. We have taken the liberty of **turning on the "opt-in" email flag** for any users who haven't been on the site for more than 60 days, and have a valid email address and a reputation score of at least 25. We did this to reconnect with Stack Overflow users who have been gone so long they might not know they have a bunch of new answers and comment replies to their posts. (Not to mention all the _awesome_ new features on the website since then.) That was about 3,000 users in total.  
  


  2. We are also turning on this flag for **users who have a bounty question in play**. We want to make sure users have at least one day of email warning before their question bounty expires, so they remember to check for an answer and accept one, if they want to avoid the auto-accept that kicks in for the highest scored answer (minimum of 2 score required).




Of course, we offer a **one-click instant unsubscribe link at the bottom of every single email we send**, so this is very easy to get out of. We don't spam, we just want to show you the answers and comments that relate to _your_ stuff!



Yes, we realize there are a dozen other ways you might want to be notified by email, and we'll get to those. But for now, this is a simple way to keep abreast of any activity on Stack Overflow when you've been away from the website.



So if you're interested in the **automatic weekly email notifications**, be sure to visit your user page and check under the Preferences tab to turn it on (or off) -- and make sure you have a valid email set in your user profile.

