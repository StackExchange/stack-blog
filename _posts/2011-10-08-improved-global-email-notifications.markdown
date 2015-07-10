---
author: jeffatwood
comments: true
date: 2011-10-08 11:29:10+00:00
layout: post
redirect_from: /2011/10/improved-global-email-notifications
hero: 
slug: improved-global-email-notifications
title: Improved Global Email Notifications
wordpress_id: 10021
tags:
- company
- community
- design
---

Our track record on email notifications has been mixed at best. Since early 2009, we've had some forms of email notification, including:





  * A checkbox under each question you own, asking if you want email notifications _for that specific question_.



  * A long since removed "oh, you've been away for 7 days, so we will mail you any new comments and answers to your questions as a courtesy" [feature](http://blog.stackoverflow.com/2009/02/now-showing-email-notifications/).




The one remaining option, an email opt-in checkbox at the bottom of every question you've asked, seemed more and more nonsensical as time went on and the network grew from 4 sites to [60+ sites](http://stackexchange.com/sites). There's no sane way to remember if you have ticked this checkbox on every question on every Stack Exchange site.

So we're simplifying. **Email notifications are now tied to your [global inbox](http://blog.stackoverflow.com/2010/09/new-global-inbox/)**.

To turn on email notifications, open [your profile page](http://stackoverflow.com/users/current) by clicking your name as it appears at the top of any Stack Exchange site, and look for the "preferences" option at the top.

![](https://i.stack.imgur.com/UZX4g.png)

In the settings, you can confirm your email address -- we'll validate it in this case to make sure the emails will arrive -- and specify whether you want emails delivered **daily, weekly, or every 3 hours**.

![](https://i.stack.imgur.com/BnDOh.png)

Bear in mind that we will only email you if you have not checked your global inbox in that time interval. Meaning, if you select the default of "daily", and you don't click to expand your global inbox on _any Stack Exchange site_ for a full 24 hour period... you'll then get an email delivered to you with the contents of your global inbox. And if you don't check for _another 24_ hours, you will get another email, and so forth.

![](/images/wordpress/global-inbox-email-example.png)

(This also offers a more aggressive "every 3 hours" option which satisfied a major outstanding request for our previous email notification support -- which was not only per question, but at best sent every 24-36 hours, and often much later depending on the timing.)

If you're worried nobody will be able to find this link buried in their profile, fret not. There is a reminder at the bottom of every single question you own, if you haven't enabled global inbox email notifications yet:

![](/images/wordpress/global-inbox-email-question-reminder.png)

Clicking that will expand the same settings inline, letting you opt in without visiting your preferences. (And no, we did not turn this on by default for anyone, even if they had previously enabled email notification for some of their particular questions; global inbox email notifications are 100% opt-in.)

One big advantage of this approach is its simplicity. If the message goes in your global inbox _for any Stack Exchange site_, you can be notified of it via email. That means:





  * Answers to your questions


  * Comments on your posts


  * Comment @name replies to you


  * [Chat room](http://chat.stackexchange.com) @name mentions


  * Some careers notifications, if you are participating on [careers](http://careers.stackoverflow.com)


  * Meta posts for community moderators



... and so on. No more worrying about per-site email options; everything is handled at the network level across all Stack Exchange sites.

We're still tweaking the layout of this mail a bit, but we believe it's a big step forward over what we had in place for email before. Give it a shot and let us know what you think!

Oh, and if email is your thing, don't forget we have a set of [nifty "best of the week" email newsletters](http://stackexchange.com/newsletters) you can subscribe to for any Stack Exchange site, too!

