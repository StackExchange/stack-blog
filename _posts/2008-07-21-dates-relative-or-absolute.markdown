---
author: jeffatwood
comments: true
date: 2008-07-21 10:04:15+00:00
layout: post
redirect_from: /2008/07/dates-relative-or-absolute
slug: dates-relative-or-absolute
title: 'Dates: Relative or Absolute?'
wordpress_id: 71
tags:
- company
- design
---


Another item we're looking at as we get closer to the Stack Overflow private beta is the issue of how to display dates on the questions and answers. We started by displaying the absolute dates as you'll see them on [Joel's existing forum](http://discuss.joelonsoftware.com/default.asp?dotnet.12.151949.6) -- although we do add the time as well:



**Monday, June 27, 2005 at 6:35 pm**



This works fine, assuming you're in the same time zone as the server. (Actually, now that I think about it, maybe that's why Joel opted to drop the time part; the odds of your time zone being in a completely different day from the server's time zone is fairly slim.) Otherwise, you have to record the user's time zone and translate all the server times to their local time.



We noticed that some sites, like [getsatisfaction](http://getsatisfaction.com/twitter), opt to display all times in relative units. So the above would be rendered as:



**Three years ago**



Granted, it lacks precision, but did you _really_ need to know the message was originally left on June 27th? And isn't it simpler not to have to do the "how old is this" math in your head? The other big advantage is that relative times work for every timezone, so you don't have to tell us your timezone in your user profile, and we don't have to be scrupulously careful to convert every date we touch.



However, note that the precision of the date increases automatically as the messages get closer to "now":




    
    
    Three years ago
    Two months ago
    17 days ago
    6 minutes ago
    





We're leaning heavily towards displaying all question and answer times in relative units now. What are your thoughts?

