---
author: jeffatwood
comments: true
date: 2011-03-01 23:02:59+00:00
layout: post
redirect_from: /2011/03/redesigned-users-page
hero: 
slug: redesigned-users-page
title: Redesigned Users Page
wordpress_id: 7369
tags:
- company
- community
- design
- stackexchange
---

After 2.5 years of being almost unchanged, we decided it was **high time the Users page got a redesign**.

The old user page was fine, in a late 2008 sort of way, but it ultimately became a bit monotonous -- every time you viewed it, you'd see more or less the same list of top users. At least, on a mature site you would. And we don't think anyone was using those oldest, newest, and name tabs at all.

The new user page is much more ... _dynamic_. And hopefully more useful and interesting as a destination.

![](/images/wordpress/new-user-page.png)

I opened [a post on meta asking for design feedback](http://meta.stackoverflow.com/questions/80690/redesigning-the-users-page) and we incorporated a lot of that feedback into the revised Users directory page:





  * We default to showing the users who **gained the most reputation in the current week**.

  * You can switch to viewing month, quarter, year, or all time. All Time is the same as the old default users page view.

  * We list the specific tags each user gained reputation for in that time frame.

  * We show the location of users, if they have populated their location field -- we have a [surprisingly diverse worldwide audience](http://blog.stackoverflow.com/2010/12/stack-overflow-2010-analytics/).

  * Searches are "match anywhere" again, but the minimum match is now 3 characters. Also, you can only match users with more than 1 reputation on Stack Overflow due to the size of the user table.


This is partially inspired by the still-awesome [Stack Exchange reputation leagues](http://stackexchange.com/leagues), and it is intended to complement them. Mostly we wanted to **highlight and showcase the efforts of _any_ active users**, not just the all-time top users.

We also added a link to the leagues on your individual user page -- a dynamic link that indicates **your current percentile ranking relative to your peers** within the current week, month, quarter, or year.

![](/images/wordpress/rep-percentiles-user-page.png)

Clicking through on this link will permalink you to your _best_ current Stack Exchange reputation league rank.

Hopefully you'll agree, as we do, that this redesign makes the users page a lot more fun and useful than it was before. We have a few more tabs we want to add to the Users page, but haven't quite gotten to yet. So check it out, and feel free to [propose new tabs](http://meta.stackoverflow.com/questions/80690/redesigning-the-users-page) or provide further feedback on meta.
