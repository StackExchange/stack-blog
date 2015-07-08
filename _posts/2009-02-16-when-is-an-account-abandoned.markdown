---
author: jeffatwood
comments: true
date: 2009-02-16 06:59:09+00:00
layout: post
redirect_from: /2009/02/when-is-an-account-abandoned
hero: 
slug: when-is-an-account-abandoned
title: When Is An Account "Abandoned"?
wordpress_id: 666
tags:
- company
- design
- community
---

Let's talk about deletion.

Not _question_ deletion, which [works this way](http://blog.stackoverflow.com/2009/04/the-stack-overflow-question-lifecycle/), for the record. The deletion I want to talk about today is **account deletion**.

Stack Overflow is a bit unusual in that our accounts are ultra lightweight. We don't require registration; we allow essentially _anonymous_ posting. We were inspired by Wikipedia in this regard. We wanted to reduce the friction of asking and answering to little more than entering an anonymous comment on a blog. For example, we often _don't even have an email address for our users_. And we're fine with that. I can't think of very many sites with as loose a definition of account as Stack Overflow.

Once someone asks or answers a question, they automatically get a cookie-based account and user id. This account can potentially be "upgraded" by attaching an OpenID to it. The downside of this choice is that we end up with lots of abandoned one-shot "accounts".

But here's the question: **when is it safe to declare an account _abandoned?_**

We came up with these two rules of thumb. If..



	
  1. the user has not visited the site in six months


## AND




	
  2. the user has not done anything of significance, ever


.. their accounts are effectively abandoned. We don't believe those users are ever coming back. With that in mind:

We **delete cookie-based unregistered accounts** when:



	
  1. The user has not visited Stack Overflow in six months


## AND




	
  2. The user has less than 50 reputation, and no visible (not-deleted) posts


We **delete OpenID registered accounts** when:



	
  1. The user has not visited Stack Overflow in six months


## AND




	
  2. The user has only 1 reputation, no visible posts, and no other accounts on the network


I think these criteria are safe. I was, however, surprised to discover there are a lot more abandoned registered accounts than abandoned unregistered, cookie-based accounts. Note that when we delete an account, the user information on their questions and answers (if they have any) are denormalized into text fields. At the very least we have an IP address, and a user-entered name, so you still have some inkling of who the original author was.

When someone _wants_ their account deleted we normally ask that they [edit the profile and email us](http://meta.stackoverflow.com/questions/5999/can-i-delete-my-account) - this adds a human sanity-check to the process, since accounts are **hard-deleted** (unlike [posts](http://meta.stackoverflow.com/questions/5221/what-can-cause-a-post-to-be-deleted-and-what-does-that-actually-mean)). However, if you signed up to post a single question and never used your account again, it's a bit simpler: users with _next-to-no presence on the site_ (left at most one post or one vote, received at most one up-vote, etc.) will see a delete option on their profile:

![profile delete link](https://i.stack.imgur.com/dlqrE.png)

This ended up being a fairly common request from folks who created an account but never used it, or accidentally created a new account before remembering that they already had one.


