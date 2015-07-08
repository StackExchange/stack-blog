---
author: jtunnell
comments: true
date: 2013-01-15 15:46:51+00:00
layout: post
redirect_from: /2013/01/announcing-a-new-way-to-change-your-profile-picture
hero: 
slug: announcing-a-new-way-to-change-your-profile-picture
title: Announcing a new way to change your profile picture
wordpress_id: 12920
tags:
- company
- announcement
- community
---

One of our New Year’s resolutions here at Stack Exchange is to take a hard look at our user experience.  As the network has grown and our audience expanded, the system has grown with it - but there are some rough edges in places that can use a bit of smoothing. You’ll be seeing a lot of improvements over the next few months, but today I’d like to announce the first bit of polish: built-in profile pictures.

We have used [Gravatar](https://en.gravatar.com/) to let you manage your profile picture since roughly [six to eight weeks before Stack Overflow entered beta](http://blog.stackoverflow.com/2008/06/gravatars-identicons-and-you/). Gravatar is a wonderful service that lets you use a consistent, recognizable image for yourself across many different services and sites. It’s free, it’s fairly easy to add support for it (which made it a great fit for Stack Overflow in the early days), it doesn’t require any special configuration to make it work on multiple sites (which made it a great fit as Stack Exchange grew) and best of all it supports distinct, recognizable default images for folks who haven’t uploaded their own.

There's one problem: if you don't have a Gravatar account, you can't have a custom picture. One basic bit of personalization turns into Yet Another Username & Password, which is annoying if Stack Exchange is the only place you would ever use it, and somewhat embarrassing considering our support for OpenID means [you don’t need another set of credentials](http://www.codinghorror.com/blog/2008/05/openid-does-the-world-really-need-yet-another-username-and-password.html) to use Stack Exchange itself!

So from now on, anyone who wants a custom picture can simply upload one from their computer or the web.  If you hover your mouse over your picture on your profile page, you’ll see a new link to ”change picture”:

![new change picture option](https://i.stack.imgur.com/n67sl.png)

Click on that, click the “Upload a new picture” button, select a picture from your computer (or enter the URL of an image on the web), and finally click the “Upload” button. That’s it.

If you decide to switch back to your Gravatar, you can do that at any time:

![selection UI](https://i.stack.imgur.com/DaUj4.png)

As always, you can have a different picture and bio for each site, or use the button at the bottom of your profile edit page to copy everything network wide. And since we default to Gravatar for profile pictures, your existing photos (or abstract patterns) will remain unchanged until you want them to change.

We would like to thank Alan and team at [Imgur](http://imgur.com/) for doing the image hosting and being incredibly helpful during the whole process. They turned what would’ve been a major development effort into something we could roll out in a couple of weeks.

Try it out, and [let us know what you think on meta](http://meta.stackoverflow.com/questions/tagged/profile-picture)!

