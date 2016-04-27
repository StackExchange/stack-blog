---
layout: post
title: Fair Elections and STV
author: jericson
date: 2016-03-01
description: The US is embroiled in party primary voting which is a good time to talk about the STV system Stack Exchange uses to elect moderators.
source: http://jericson.github.io/2016/02/20/stv.html
tags: community
no_comments: true
---

Today is
[Super Tuesday](http://fivethirtyeight.com/features/super-tuesday-preview-republican-presidential-election-2016/)!
Unless you read FiveThirtyEight, it's not really as awesome as
[other Super things](https://en.wikipedia.org/wiki/Super_Friends). However,
it does make a good excuse to talk about one of the more esoteric bits
of Stack Exchange: moderator elections.

As I write this, Donald Trump is well on his way to winning the
Republican primary even though most people predict he'd
[lose a two candidate race](http://fivethirtyeight.com/features/does-donald-trump-have-a-ceiling/). The
problem can be summed up with this (hypothetical) chart:

Percentage | First choice | Second choice | Third choice
---------- | ------------ | ------------- | ------------
33%        | Trump        | N/A           | N/A
22%        | Rubio        | Cruz          | N/A
22%        | Cruz         | Rubio         | N/A
8%         | Bush         | Rubio         | Cruz
8%         | Kasich       | Rubio         | Cruz
7%         | Carson       | Cruz          | Rubio

Trump supporters tend to be pretty adamant about their candidate, so
let's suppose they wouldn't bother to vote if he weren't running. And
let's suppose that Cruz and Rubio supporters would rather have the
other candidate rather than Trump. And let's suppose Bush, Kasich and
Carson are stealing votes that would go to one of the leading
"not-Trump" candidates. In this scenario, it's clear that Trump is
only in play because the rest of the field is divided. He'd lose to
Rubio in a two-candidate race.

This is precisely the sort of paradox that
[single transferable vote (STV)](https://en.wikipedia.org/wiki/Single_transferable_vote)
systems are designed to resolve. While the math can be daunting, the
idea is rather simple. Instead of waiting for candidates to drop out,
an STV system allows voters to rank their preferences and resolve the
voting accordingly. So in the example above, Carson, as the
least-supported candidate, would be dropped and his votes would be
transferred to Cruz.<sup>1</sup> The new tally would be:

Percentage | First choice | Second choice | Third choice
---------- | ------------ | ------------- | ------------
33%        | Trump        | N/A           | N/A
29%        | Cruz         | Rubio         | N/A
22%        | Rubio        | Cruz          | N/A
8%         | Bush         | Rubio         | Cruz
8%         | Kasich       | Rubio         | Cruz

Then the process of dropping the candidate with the least votes would
continue until some candidate gets a majority:

Percentage | First choice 
---------- | ------------ 
67%        | Rubio
33%        | Trump

It's as simple as that.<sup>2</sup>

Moderators on Stack Exchange are elected using single transferable
vote because we believe it provides the best method for representing
the interests of broad and diverse communities.<sup>3</sup> Instead of forcing
voters to judge whether a candidate might be popular among other
voters, the system allows people to vote their preferences without
throwing away their vote on losing candidates.

[!["Well, I believe I'll vote for a third-party candidate!" "Go ahead, throw your vote away!"](https://i.stack.imgur.com/0Sr8b.gif)](https://www.washingtonpost.com/news/the-fix/wp/2015/03/09/the-co-creator-of-the-simpsons-died-today-here-are-11-of-our-favorite-political-moments-from-the-show/)

---

Footnotes:

1. To simplify the explanation, I'm assuming _all_ of the
    supporters of Carson would have identical preferences. In reality,
    other candidates, including Trump, would pick up some of those
    votes.

2. Again, the real world is a bit more complicated because some
    people would have Trump as their second or third choice over
    Rubio. There would also be people who leave both Rubio and Trump
    off their ballots resulting in "wasted" votes. Finally, the party
    might decide it worthwhile to award delegates proportionally to,
    say, the top three candidates. On Stack Exchange, we use the more
    sophisticated
    [Meek algorithm](https://en.wikipedia.org/wiki/Counting_single_transferable_votes#Meek)
    that solves all of these problems.

3. Even the fact that we allow our users to select moderators at
    all is
    [a bit unusual](http://skeptics.stackexchange.com/q/31376/3252).
