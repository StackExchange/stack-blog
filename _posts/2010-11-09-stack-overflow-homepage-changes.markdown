---
author: jeffatwood
comments: true
date: 2010-11-09 10:43:37+00:00
layout: post
redirect_from: /2010/11/stack-overflow-homepage-changes
hero: 
slug: stack-overflow-homepage-changes
title: Stack Overflow Homepage Changes
wordpress_id: 6071
tags:
- company
- community
- design
---

As I mentioned in [The Horror of No Answer: Revival and Necromancer](http://blog.stackoverflow.com/2010/11/the-horror-of-no-answer-revival-and-necromancer/):



> It’s fine — expected, even — for there to be a “long tail” of questions that are too obscure, too narrow, or just plain unanswerable for whatever reason. Sometimes you have to be patient; it takes the time it takes. But seeing the number of zero-answer questions grow by 50% over a 3 month period is definitely concerning.

> Part of this is our fault for not adapting the homepage to the massive amount of question activity that Stack Overflow now enjoys. We’re working on it, but it will take some time to figure out the right approach.




The default question ordering on the home page is a simple, flat list of the most recent (n) questions sorted by activity date -- where activity is defined as a new answer, an edit, or a new question. Sophisticated, it ain't, but it has worked well for us up to a certain volume of activity. Stack Overflow is now _well_ beyond that volume.

I asked for [help redesigning the Stack Overflow homepage](http://meta.stackoverflow.com/questions/69063/help-us-redesign-the-stack-overflow-homepage) on meta, and the consensus was to **keep the same design (for now), but try to show more relevant questions to each user**. 

We began playing with experimental question weighting algorithms to decide which questions to show to a particular user. Sam Saffron set up a clever little experimental home page where you can [have a play with the algorithm client side](http://meta.stackoverflow.com/questions/69571/help-us-choose-a-sort-order-for-the-stack-overflow-homepage) and see what weightings produce the best fit for you.

As of today, we've rolled this change out based on your feedback. On Stack Overflow (and _only_ Stack Overflow) the default home page tab has changed from **active** to **interesting**. The goal is no longer to show you a simple flat list of the last (n) active questions -- that's not even possible any more based on sheer question volume -- but, instead, to narrow the list to a _subset of active questions that we think you will be interested in_.

Here's how it works. Starting with a list of the last 3,000 active questions:





  * drop questions containing any of your ignored tags

  * drop closed questions _if_ you lack the reputation required to vote for reopening

  * drop questions scoring -4 or lower


Next, apply the following score formula to the remaining questions:

<table cellpadding="4" width="600" cellspacing="4" >
<tr >

<td >your <a href="http://blog.stackoverflow.com/2008/10/expressing-your-tag-preferences/">interesting tags</a>
</td>

<td >+1,500 per interesting tag, up to +2,000 total
</td>
</tr>
<tr >

<td >your top 40 scoring tags
</td>

<td >maximum of +1,000 per tag (scaled), up to +2,000 total
</td>
</tr>
<tr >

<td >question score
</td>

<td >+200 × score, up to +1,000 total
</td>
</tr>
<tr >

<td >total answer score
</td>

<td >-200 × score, up to -1,000 total
</td>
</tr>
<tr >

<td >number of answers
</td>

<td >-200 × answers, up to -1,000 total
</td>
</tr>
<tr >

<td >number of views
</td>

<td >-15 × views, up to -1,000 total
</td>
</tr>
<tr >

<td >question last activity date
</td>

<td >-1 × (seconds / 15)
</td>
</tr>
</table>

Count it all up and take the top 90 by score.

We also mix in a few random questions from the last 3,000 -- 10% (9) for logged in users and 20% (18) for anonymous users. We're like **DJs trying to spin a mix of songs** -- some you might know by heart and love, others you might not have chosen for yourself, but could possibly like if you gave them a fair listen.

The resulting change in the homepage is fairly dramatic. Here's a screenshot of the old Stack Overflow homepage (the **active** tab) compared to the new Stack Overflow homepage (the **interesting** tab):

[![](/images/wordpress/interesting-vs-active.png)](/images/wordpress/interesting-vs-active-large.png)

Quite the sea of red unanswered questions, which seems to meet our goal of giving questions which _haven't_ yet gotten a good answer, more time on the homepage to get one.

You can compare yourself by viewing the old "active" tab at [http://stackoverflow.com/?tab=active](http://stackoverflow.com/?tab=active) and comparing that to what you get shown -- both as a logged-in user and as an anonymous user.

I'll be honest with you, this change makes me nervous. It's like Colonel Sanders mucking around with [his magical blend of 11 herbs and spices](http://www.kfc.com/about/secret.asp). But at the same time, the old simple "questions by activity date" homepage default was clearly not working with the 2,000+ questions being asked on Stack Overflow each and every day. Something _had to change_.

Well, this is that change. Let us know what you think, and feel free to [experiment with alternative weightings](http://meta.stackoverflow.com/questions/69571/help-us-choose-a-sort-order-for-the-stack-overflow-homepage) if you have ideas for ways to further improve upon it.

