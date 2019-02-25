---
layout: post
title: "How Stack Overflow Redesigned the Top Navigation"
author: kjbeavers
date: 2017-02-14 13:30:00
tags:
- engineering
- company
- announcements
---
You may have noticed that we’re sporting a new look today.

![New Top Navigation](https://i.stack.imgur.com/jHJJI.png)

We launched this update today as part of a series of changes supporting our core mission: Make developers’ lives better. In the past year, we fully integrated our by-developers, for-developers [Jobs](http://stackoverflow.com/jobs) product. We added a whole new content type — [Documentation](https://stackoverflow.blog/2016/07/introducing-stack-overflow-documentation-beta/) — to help you find even more solutions to your programming questions. And we added [Developer Story](https://stackoverflow.blog/2016/10/bye-bye-bullets-the-stack-overflow-developer-story-is-the-new-technical-resume/) to help developers ditch the outdated resume format. 

During this time, we also evolved our product development process to include more user research, allowing us to validate ideas earlier and surface more users’ voices. There’s a ton you can learn by watching people try to use a feature — things that don’t get uncovered when directly soliciting feedback. As both product and process expanded, it quickly became apparent that Stack Overflow had outgrown some of our previous design decisions.

# A Common Theme 

A pattern surfaced when talking to users: even with the addition of Jobs and Documentation to the navigation, many developers weren’t aware of the change. Digging deeper, we discovered that many weren’t really seeing the top bar at all - a “mental block” so effective that most users also couldn’t identify what the icons meant. 

![Previous Top Navigation](https://i.stack.imgur.com/M6h7O.png)

Here’s what a few of you said:

> “When I come here I’m on a mission; I don’t care about the rest.”

> “You’re only there for 1 reason: to find the answer to your question.”

> “From my point of view, nothing above the question title exists.”

> “I scroll down and read the question.”

The data validated our hypothesis — of the average 9.3 million daily visits to Stack Overflow, we get fewer than 88,000 clicks to the navigation or top bar (this includes inbox, rep, profile, and search.) If you divided each individual click per visit, that’s fewer than 1% of visits navigating anywhere (and far fewer if you counted multiple clicks per visit). Our navigation is not being used by 99% of our users.

The common use case for millions of daily visitors is “come from Google, scroll to middle of the page to a find an answer (without seeing the nav and sometimes evening ignore the question itself), and leave. This workflow makes sense — and we love helping the world’s developers gain programming knowledge quickly — but this also means many visitors don’t benefit from everything that Stack Overflow has to offer. If they’re not aware, then we’re less effective in helping more developers share their knowledge by finding questions to answer, advance their career search, utilize Documentation, or become contributing members of our community. 

We hypothesized that a lack of engagement with the nav was due to a combination of browsing habits, visual hierarchy, and the right-hand position of the layout. Based on research about  [F-shaped reading patterns](https://www.nngroup.com/articles/f-shaped-pattern-reading-web-content/) and how readers’ eyes commonly move down the page, it made sense that our navigation was sub-optimal for most people.

![F-shaped reading patterns](https://i.stack.imgur.com/A2DaF.png)

We also hypothesized that the focal point of the page (the logo) caused many users to skip over the small top bar. Plus the nav and top bar quickly scroll out of view when moving down the page.

![](https://i.stack.imgur.com/ea5NY.png)

The product design team then did a [design sprint](https://robots.thoughtbot.com/the-product-design-sprint). Each designer created their own design of the top nav and then converged to critique and identify the strongest ideas. The team then combined the best parts of their ideas into one design. The main thinking generated from the sprint:

![](https://i.stack.imgur.com/pYRge.png)

* Remove clutter and group similar information in a way that’s more quickly parsable
* Stick the navigation to the top of the page so that users who are scrolling quickly to answers or arriving from answer or comment links still have access to search or navigate the site
* Use navigation design patterns more commonly found in contemporary web apps
* Design the navigation as shorthand for the Stack Overflow brand

Stack Overflow users compared the new screens against the current navigation in focus groups at three tech companies. Here’s a sampling of what we heard about the **current version of the top bar**:

> “I’m not even sure if the black bar is new.” 

> “I logically filter out the stuff that I know I’m not looking for.”

> “Nav looks like tags — they might filter, but they don’t look like navigation. Makes you question what it is so I don’t click it and instead go back to Google that I’m familiar with.”

> “I’m signed in and I still don’t know what those (inbox, achievements) mean.”

> “Jumbled stuff at the top that you have to read and decipher.”

> “Black bar is kinda… doesn’t look like it belongs, all else is white, grey, orange.”

And the **new version**:

> “On the current nav I didn’t know what the inbox / rep icons were, on the new one I know what every button will do.”

> “I know I can search, I know I can go to Jobs.”  

> “Much more modern, this one.”

> “I like the old black bar, but I like that I know what I’m getting myself into on the new one.”

> “A lot less noise, more signal.”

> “Cleaner, more organized. Instead of jumbled stuff at top you have to read and decipher you can go to this.”

> “More standardized position that you’re used to on other sites.”

# Project Definition

At this point there was enough info to make the top navigation redesign an actual project. The nav is an area of the site that touches so many different use cases, user types, and metrics; it was important to tightly scope the project and clearly define the goals in advance in order to ship quickly. To mitigate scope creep, feature parity to the current navigation was the defined scope (with a few exceptions).

![](https://i.stack.imgur.com/DnQ56.png)

**Primary goals**

* Present all the tools we provide for developers in a way that's consistent with them actually discovering them
* Increase traffic to Jobs and Documentation
* More intuitive, updated visual design
* Increase the number of users who sign up and gain access to more site features

**Secondary goals**

* Increase in notifications acknowledged
* Increase or no decline in searches
* No decline in questions asked
* And a handful of other important and boring metrics that we simply didn’t want to screw up

The progressive rollout plan to measure success had the following objectives:

* **Usability tests** on clickable prototype with 6 additional users to catch any major UX and functionality issues and gather qualitative insights about the new design 
* **A/B test with 5% of anonymous users** to measure usage data
* **A/B test with 10% of registered users** with less than 500 reputation to measure usage data
* **Opt-in for all Stack Overflow employees**
* **Opt-in for all users** for Meta feedback and for debugging

Our findings from each...

# Usability Tests

These tests were conducted in 1-1 recorded hangouts with 6 users who ranged from having low to high reputation. 

While a few participants struggled with identifying two of the icons (which were updated mid-testing), all participants successfully completed all tasks, and all participants prefered the new design over the current.

> “Looks really, really good. By far I like the new one — in the current one, you don’t notice the navigation at all, only the top bar. The (sub) tabs catch my eye before the current navigation.”

> “In the old, it is weird to me that the two bars exist separately. This one feels more natural.”

> “The new one is cleaner. Less wasted space. Things are more compact on the new one and account info is better grouped. Tabs across the top is preferable because a lot of sites have a similar flow. ...much prefer the new one.”

## A/B Test with 5% of Anonymous Visitors 

This test ran from 2016-12-01 to 2017-01-19 for about 2 million users in each A/B group. Anonymous visitors account for about 97% of all page views but only 61% of the current navigation clicks.

* Signups increased by 7%
* Clicks to Questions increased by 163%
* Clicks to Jobs increased by 160% (an expected 16% increase in overall Jobs traffic)
* Clicks to Documentation increased by 229%
* Clicks to Tags increased by 113%
* Clicks to Users increased by 178%
* Clicks to Ask Question increased by 33%
* Searches decreased by 13%*

*Adjustments to the design between the anonymous test and the registered user test were made that resolved this issue and actually improved the number of searches in the next test.

While some dropoff often happens after launch due to novelty effect, these increases were large enough to make us think that a good portion of the increases would be sustained after launch. Regardless, we’ll continue to measure and monitor the performance of the new top nav. 

![](https://i.stack.imgur.com/5GGGc.png)

## A/B Test with 10% of Registered Users with Less than 500 Rep

This test ran from 2017-01-18 to 2017-01-30 for about 100k users in each A/B group . Registered user account for about 3% of all page views but about 44% of the current top navigation clicks.

* Inboxes shown increased by 45%
* Achievements shown increased by 11%
* Clicks to Questions increased by 51%
* Clicks to Jobs increased by 99% (an expected 15% increase in overall Jobs traffic)
* Clicks to Documentation increased by 113%
* Clicks to Tags increased by 32%
* Clicks to Users increased by 82%
* Clicks to Ask Question remained the same
* Searches increased by 8%

## Opt-in for Stack Overflow Employees

This phase began Tuesday, February 1. About 100 Stack Overflow employees opted in to test the new top nav.

## Opt-in for All Users

This phase began 2017-02-07 to 2017-02-14. Around 1600 users opted in.

Feedback from the Meta community has been extremely helpful. Thank you to everyone who participated! A number of bugs were fixed during this period, some feature requests were implemented and others considered or planned. For a more complete list of updates, see [Des’s most recent post](http://meta.stackoverflow.com/questions/343653/top-navigation-update?noredirect=1#comment447065_343653).

# Next Steps

There’s a running list of ideas we’d like to try in the near future. We plan on iterating upon the design and functionality of our new top nav in a series of A/B tests. There are also early-phase explorations into how this might roll out to international and other Stack Exchange community sites.

The design team is working on a cohesive design language  in order to create consistent experiences across all our product areas. Some of these changes have already rolled out, and more are coming in the near future. Special thanks to Paweł Ludwiczak’s and Oded Coster's hard work designing and implementing the new top navigation.

As always, we appreciate your feedback. If you have a bug or feature request — post it on Meta.
