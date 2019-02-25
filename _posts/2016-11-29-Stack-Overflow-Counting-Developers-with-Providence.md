---
layout: post
title: Stack Overflow - Counting Developers with Providence
author: kevintroy
date: 2016-11-29
description: Our data platform, Providence, has evolved over the last two years.  We look at how and why it has changed, and the effects on our counts of developers.
tags:
- engineering
- data
---


Capturing developer trends data
-------------------------------

For the last two years, we have contributed data on developer trends across Europe to [The State of European Tech Report](http://www.atomico.com/news/the-state-of-european-tech), created by Atomico and Slush.

The way we captured the developer trends data changed this year as we rebuilt our data analysis platform called [Providence](https://stackoverflow.blog/2016/11/Stack-Overflow-Counting-Developers-with-Providence/). Providence is our machine learning platform that tracks user behaviour on Stack Overflow. It analyses the questions and answers that users interact with, in order to determine [what sort of technologies an individual works with](http://stackoverflow.blog/2015/11/how-to-target-your-job-listing/). (If you'd like to see your own Providence record, you can access it [here](http://stackoverflow.com/users/prediction-data).)

The improvement that has had the most dramatic impact is the way the system registers individuals visiting Stack Overflow, making the counting of developers much more precise. Like all systems, the longer it runs, the better it gets. We fine-tune it over time.


Fine-tuning the system
----------------------

The result of all these improvements to Providence is that the the Stack Overflow data within this year’s State of European Tech Report looks like a sharp increase on last year’s figures. This is not because there has suddenly been a surge in the developer community, however, but because we are no longer comparing data sets captured in the same way — put simply, we aren’t comparing apples with apples.

An analogy would be that last year we were counting developers who visited the site as if we were counting the number of diners in a restaurant by the number of people settling a bill. In fact, there are often lots more people dining in the restaurant, so we've improved our way of counting to ensure all developers (or diners) are included.

Having fine-tuned Providence, we’re excited to reveal that the number of developers in Europe and indeed other parts of the world, is in fact much larger than we originally thought.

For the technical details for some of the early rebuilding of Providence and the kind of issues that arise building such a complex system, read on.


Probability to precision
------------------------

We started building Providence in February of 2014.  Originally we focused our efforts on analyzing our traffic data to better match developers to jobs listed on our Talent platform.   The systems and data that resulted from those efforts eventually lead to our ability to map the developer landscape in terms of geography and specialization.

Tens of millions of questions are viewed (by many millions of developers) on Stack Overflow daily.  To properly analyze the many weeks worth of data that are required to build a global understanding of the developer landscape, our early system took a probabilistic approach — sampling our data to ease computational requirements.  In the last year we have moved away from probabilistic approaches to more precise ones. While these new approaches required more engineering effort, they reduced variability and increased precision in the final results.

Our systems also draw a distinction between "professional grade" developers and hobbyists, students, or other dabblers; including the former while excluding the latter.  Our initial versions made some very conservative assumptions, as is the norm when beginning an analysis, essentially requiring a person be "professional grade" and be specializing in one or more of a few dozen technical topics.  Our notion of “capable of working as a professional developer” has been improved in the last year — becoming less conservative naturally — resulting in a more accurate count of developers in a region.
