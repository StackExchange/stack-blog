---
author: jeffatwood
comments: true
date: 2009-03-09 04:36:19+00:00
layout: post
redirect_from: /2009/03/the-value-of-downvoting-or-how-hacker-news-gets-it-wrong
hero: 
slug: the-value-of-downvoting-or-how-hacker-news-gets-it-wrong
title: The Value of Downvoting, or, How Hacker News Gets It Wrong
wordpress_id: 802
tags:
- company
- community
---

Paul Graham's [Hacker News](http://news.ycombinator.com/) is a great website to find interesting programming links and sane discussion. The site reflects a sort of post-[Reddit](http://reddit.com/) sensibility; the design of HN was directly intended to address the shortcomings of [programming.reddit.com](http://www.reddit.com/r/programming/) from someone very much on the inside (Reddit was a Paul Graham [Y Combinator](http://ycombinator.com/) startup). As such we studied it closely when building Stack Overflow.

It is true that **discussion on Hacker News is more serious and less incendiary than the wild-west anything goes of programming.reddit.com**. I've seen this firsthand, on blog articles I've written that have been posted to both sites. In [What I've Learned from Hacker News](http://www.paulgraham.com/hackernews.html), Paul explains:


> It's pretty clear now that the broken windows theory applies to community sites as well. The theory is that minor forms of bad behavior encourage worse ones: that a neighborhood with lots of graffiti and broken windows becomes one where robberies occur. I was living in New York when Giuliani introduced the reforms that made the broken windows theory famous, and the transformation was miraculous. And I was a Reddit user when the opposite happened there, and the transformation was equally dramatic.

> I'm not criticizing Steve and Alexis. What happened to Reddit didn't happen out of neglect. From the start they had a policy of censoring nothing except spam. Plus Reddit had different goals from Hacker News. Reddit was a startup, not a side project; its goal was to grow as fast as possible. Combine rapid growth and zero censorship, and the result is a free for all. But I don't think they'd do much differently if they were doing it again. Measured by traffic, Reddit is much more successful than Hacker News.

> But what happened to Reddit won't inevitably happen to HN.


It's a good read for anyone interested in building communities online. As you might imagine, I read it with particular interest since we've been running a full blown (and far larger than I would have predicted) programming community over the last 7 months.

Perhaps the most notable difference between Hacker News and Reddit is that **it's impossible to downvote anything on Hacker News**. There exists one, and only one, form of vote: the upvote. So you can either upvote something, or do nothing at all. It's an interesting design decision, but ultimately a bad one, in my opinion.

(update: Apparently it _is_ possible to downvote comments, which I never realized. It is [buried in the faq](http://ycombinator.com/newsfaq.html):)


> **Why don't I see down arrows?**

> There are no down arrows on submissions. They only appear on comments after users reach a certain karma threshold [ed: this is unstated for some bizarre reason, but it is currently 100].


(I apologize for my misunderstanding, but there's no visible UI for downvoting, and I can't recall ever seeing a single negative voted comment in all the times I've visited Hacker News! Also, I put these comments in parens to make them extra-LISPy so Paul Graham would see my corrections.)

Let me get some important caveats out of the way: we have to be careful in drawing comparisons between Hacker News and Stack Overflow, because they are fundamentally different sites. We're a Q&A site with some accidental discussion, and Hacker News is a site that exists for the express _purpose_ of discussion and link sharing. So to the extent that we have different missions and different goals, approaches that work for our site might not work for HN, and vice-versa.

On Hacker News, every post effectively starts at zero (technically, one implied upvote, which is your own, but we'll call that zero), and can be upvoted indefinitely.

![graph-axis-0-to-15](/images/wordpress/graph-axis-0-to-15.png)

The advantage of this system is that nobody gets downvoted, but at a steep cost: **we've lost half the potential information**. If a post has zero upvotes, does that mean it's bad? incorrect? uninteresting? mediocre? There's _no way to tell_, because zero has multiple meanings.

![graph-axis-negative15-to-15](/images/wordpress/graph-axis-negative15-to-15.png)

If you add back in the negatives, suddenly the range is doubled. An evil or incorrect post is now _different_ than a mediocre or uninteresting post, because it will have downvotes and a negative score.

But getting downvoted isn't anyone's idea of a good time. It's tempting to disallow it entirely, to avoid [this inevitable discussion](http://stackoverflow.uservoice.com/pages/general/suggestions/133310-discourage-downvoting):


> Please do something else to discourage downvoting. Maybe increase the cost to the downvoter (there's already a "declined" on force user to comment on downvoting).

> This isn't about points. It's about participation. Downvoting should be reserved for nasty/offensive/stupid/poorly-thought-out/totally-off-base comments. If someone spends the time to make an honest effort to answer a question, but it's not that great an answer, just don't upvote them... Downvoting sends a message, "We disapprove. You spent your valuable time, but we don't care." It makes me think, why should I bother spending the time to write up answers for this forum?

> I stopped posting on several usenet newsgroups because the major participants were just nasty and sarcastic. Don't let this happen to Stack Overflow.


You could argue that the saner level of discussion on Hacker News is because downvotes are disallowed. I'm not so sure; I think it's more attributable to the fact that Hacker News is relatively young, having launched in February 2007, and the small (but growing) size of the community.

In building Stack Overflow, we realized the intrinsic informational value of full range post scores. Downvotes give you the critically important ability to **distinguish between the good, the bad, and the ugly**. Without downvotes, how can you possibly tell the difference between a post that is harmless but uninteresting, and one that is actually wrong or harmful? Sure, it stings a bit to get downvoted. I've been downvoted myself on Stack Overflow. And each time, it makes me pause. But that's _good!_ That's _necessary!_ You have to believe there are potential consequences for every post you make -- both good and bad. This is how things work on real playgrounds; why would we expect our web playgrounds to be any different?

The idea of a world where nobody can be downvoted strikes me as more than a little utopian. Is it realistic for users to expect to post in an environment where there are _no penalties at all_, no way for their peers to express disapproval or disagreement with their post? When you can't leave a quiet, anonymous downvote, you're more likely to post a snarky reply to express your displeasure. That's why **disallowing downvotes is actively harmful to community**.

The problem isn't downvotes, per se, but encouraging _responsible_ downvoting. That's why on Stack Overflow, we do it this way:



	
  * Upvotes add **10** reputation to the post author

	
  * Downvotes remove **2** reputation from the post author, _and **1** from your reputation_


The trick here is that downvotes are mostly informational. The cost of a downvote to the users' reputation (or karma in Slashdot/Reddit parlance) is quite low. It would take a whopping 5 downvotes to equal the effect of a single upvote. And, on top of that, downvotes cost _you_ a tiny bit of reputation. The net effect is that you have to feel very strongly about something to downvote it. Downvotes are serious business, and not to be cast lightly. We designed our system around that maxim.

Does it work? I think the data itself tells the story. Here are the total number of votes cast on Stack Overflow through 3/7/2009:
<table cellpadding="4" cellspacing="4" >
<tbody >
<tr >

<td >upvotes
</td>

<td align="right" >1,251,020
</td>
</tr>
<tr >

<td >downvotes
</td>

<td align="right" >122,141
</td>
</tr>
</tbody>
</table>
On average, there are **10x as many upvotes cast as downvotes**. That's even more optimistic than math would predict (10 / 2 = 5x). That's because we also do a few other things that help keep downvoting in check:



	
  * We limit total votes per day to 30 per user.

	
  * You do not have the right to cast downvotes at all until you earn the equivalent of 10 upvotes, or 100 reputation.


The [endless inflation of a system with no voting limits](http://news.ycombinator.com/item?id=495216) is something we learned early on. Instituting vote limits has many advantages besides reducing the inherent inflation. Even if you want to maliciously downvote someone out of revenge, you can only do -60 damage to that user's reputation per day -- while simultaneously reducing your _own_ reputation by -30. And you'll have to wait 24 hours to do it again, which is a nice de-facto timeout to potentially let cooler heads prevail.

I understand what Mr. Graham was aiming for in Hacker News. An environment where nobody has to feel the sting of a downvote is a laudable goal, and it's certainly easy to implement. But is it real? Is it _honest?_ **The lack of a downvote removes far too much of the critical community feedback loop from the system**. And in the longer term, that will do more to tear down your community than build it up.


