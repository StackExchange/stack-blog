---
layout: post
author: alitovsky
title: Going From Mobile Back To The Web
hero: https://ununsplash.imgix.net/photo-1428954376791-d9ae785dfb2d?fit=crop&fm=jpg&h=700&q=75&w=1050
description: "Are you restless at your job, but looking for a challenge? Going into a completely different technology stack has its rewards. Find out how developers can move around teams and technology at Stack Exchange to maximize happiness."
source: http://www.arielitovsky.com/blog/from-mobile-back-to-the-web/
tags:
- engineering
- development
- culture

---

Developers will generally agree that learning the latest and hottest set of technologies will help you advance your career and avoid getting left behind. In addition, most of us know that specialization in one technology stack triumphs shallow knowledge in many others.

In this post, I'd like to share my more unusual — though not unique — experience of how going from mobile development back into web development kept me sane and helped me feel more fulfilled at Stack Exchange. With such a huge professional investment in the mobile world, the higher demand and average pay of mobile developers, you might wonder why I would even consider switching to the not-as-hip ASP.NET stack (as most mobile developers' see it).

My background
---------------


[![A mobile developer's desk at Stack Exchange](https://i.imgur.com/0h7IQQi.jpg)](https://i.imgur.com/0h7IQQi.jpg)
*A mobile developer's desk at Stack Exchange*

I'm part of a small, but lucky subset of developers who graduated from university in early 2009 -- a time when the US recession was still looming in the mind of every college student preparing themselves for a bleak job market. On the other hand, this was only about 9 months after Apple had released the first iOS SDK, and only 3 months after Google released their rival product, the Android SDK.

Neither of these facts seemed to have much effect on my first job. The mobile revolution hadn't quite come in full force. 

Instead, I worked at a company in the supply-chain management space where I spent 11 months at work using a custom Eclipse build that was souped up in-house, with a little bit of Javascript on the frontend using Ext JS. Getting my machine ready to develop took about a week; build times powered by Ant were painfully slow (on the order of 5 minutes), especially on the aging desktop that had been passed down to me by some poor soul.

During these idle periods of my (quite sad) first experience in the real world, I had plenty of time to work on a new skill. I had fiddled with the iOS SDK during my second year of college, when a friend was working on an early medical translation app for the iPhone. I never got very far with it, and my studies took over. However, this time around, I had ample time to read documentation, write some test code, and even release my first App Store app for studying with flashcards!

Things really got going in 2010, when, with the little experience I had developing on mobile phones, I got a different gig at an up-and-coming, mobile-only shop in Dallas. The subsequent three years were a period of non-stop learning and growth — our modest shop grew from 10 developers to over 50. I had ample opportunity to learn the subtle art of mobile development on both the code and UX ends.  It was definitely a special time to work in the field, as businesses need their apps done yesterday, and there were many big-brand projects that were featured or promoted on the Apple App Store.

At one point I even spent a summer working on my own startup, creating an educational math app for the iPad. 

The Stack Exchange mobile app
--------------

When I came to work at Stack Exchange in mid 2013, I was the first iOS developer to be hired. Kasra Rahjerdi had recently joined to work on Android, and Brian Nickel was hired soon after to work on iOS as well. We already had the comprehensive Stack Exchange API, but only a rudimentary app that some employees started working on. We rolled our sleeves, dug in, and released the first [iOS version](https://blog.stackexchange.com/2014/05/stack-exchange-for-iphone-is-here/) in May of 2014.

[![Working on the Stack Exchange iOS app from a rented apartment in Argentina](https://i.imgur.com/gEzD4Pl.jpg)](https://i.imgur.com/gEzD4Pl.jpg)
*Working on the Stack Exchange iOS app from a rented apartment in Argentina*

After some time, I got an itch. I needed a change.

There were several, very good reasons for this. After working on it for over a year and half, the iOS app was approaching a level of extremely high polish. We were beginning to fix very small and uncritical bugs (a good problem to have). With two iOS developers at the helm, we were competing for the little work there was to do. **A piece of software can always improve, but that doesn't mean those improvements have any bearing on real business goals.** In our case, creating new, shiny yet important new features often required lots of work on the backend, which was under the responsibilities of the Core Q&A team, who are often busy working on more urgent things. This started to become a little frustrating, and not very fulfilling. 

At the same time, I got a little sick of working within the iOS ecosystem. (One can only drink the kool aid for so long). I had been doing it for almost four and a half years, and while that may not seem like a lot for some you oldtimers, I was tired of doing the same type of iOS apps - a CRUD app that consumes an API with lots and lots of UI work.

I thought about switching roles several times, but I was pretty hesitant. Our iOS team was small; I didn't want to seem like a quitter, and, to be honest, I didn't have a lot of experience on the .NET stack.  The only related experience was using Web Forms back in 2006 during an internship, but Stack Exchange uses the well known ASP.NET MVC framework. 

Maybe I underestimated myself. **I also wrongly assumed that the web had changed way too quickly in the period I wasn't working on it**. Mobile was definitely changing fast, and it was fun (but also time consuming) to stay up to date with yearly SDK releases (and some big design changes), so I thought I would lose years of experience in the process.

How The Change Happened
---------------------

One fateful morning, I received the following e-mail from our VP of engineering: 

[![David's E-mail about hiring plans](https://i.imgur.com/L78hiGv.jpg "...think about if you're interesting in trying for another team")](https://i.imgur.com/L78hiGv.jpg)

Whatever doubts I had about moving teams were set aside, and I seized the opportunity to explore a new tech stack and team. Obviously this was not a new practice at Stack Exchange — we've had several developers move and create new teams 
like our ad server team or the data science team that works on the [providence project](http://kevinmontrose.com/2015/01/27/providence-machine-learning-at-stack-exchange/). We've even had a few brave souls who have become engineering managers. However, that simple suggestion by our VP
was the catalyst (or kick) that I needed to get out of my comfort zone.

I decided to join the Careers team. I liked the potential to build new features quickly, coupled with a smaller audience size (which gave me a little more room for error and learning).

Getting Up To Speed
---------------------

I feel pretty good ramping up to "not quite mastery, but can get things done" within a month or so. With the aid of some excellent setup scripts, I had a working and running development instance of Careers in *less than a day's time*. The scripts are simply a series of batch files that lead you from a fresh-windows install through installing Visual Studio, cloning all the necessary repos, setting up the MS SQL database instance, setting up Redis, Elastic Search, and even IIS.

[![A screenshot of one of our setup scripts](https://i.imgur.com/jPgMXsM.png?1 "A screenshot of one of our setup scripts")](https://i.imgur.com/jPgMXsM.png?1)

I spent the first week pouring over a book on the ASP.NET MVC Framework. I had used C# quite a bit in a previous internship, so had no trouble there. I still felt a bit rusty on my frontend chops, especially when it came to newer JS frameworks, so I spent a little bit of time playing with Angular JS, as well as attending the O'Reilly Fluent conference in San Francisco (paid for by Stack Exchange, of course). Like many others, **Stack Overflow was integral to filling in any gaps and learning by example**, which I think really helps cement everything in.

By joining the Careers team, I also swiftly got exposed to a different set of products and got to know some new faces. I think this gave me a broader perspective, but also fostered my sense of belonging and purpose in the company. As part of a small team, and especially working remotely (and from a different country!), I felt a bit insulated at times; this is great when you have your work cut out for you, as I did while working on the Stack Exchange app, since you can focus and get things done. On the other hand, **joining the larger Careers team gave me access to an organizational and product knowledge** that is difficult to get otherwise.


First Steps
------------------
My first task as a Careers developer involved allowing our customers to buy job listings of different durations online. Until then, customers could buy 30-day listings by themselves, but would need to call a sales person to get a 60-day, 90-day or longer listing. Our checkout funnel was also promoting the idea of buying in bulk, and while this is still possible (and cheaper per unit!), we know that longer listings tend to make our customers more successful in completing a hire. 

[![The new Job Listings checkout form, now with longer listings](https://i.imgur.com/JzzMNb7.jpg)](https://i.imgur.com/JzzMNb7.jpg)
*The new Job Listings checkout form, now with longer listings*

These two small, seemingly innocuous changes involved touching quite a few parts of the codebase, since the assumption of a 30-day job listings was sprinkled here and there. Though not a particularly interesting problem technically, it was small enough in scope that I could complete it quickly, learn a lot about our codebase, talk to many different people throughout the organization, and get get something shipped within a few weeks. The actual implementation only took 2-3 days; the feature was shipped a littler later while waiting on some verification from our marketing team for new prices, and some updates to localized copy.

Conclusions
-----------------

I haven't abandoned the idea of working on iOS -- far from it. Taking a break to explore some other areas puts me in a great position, say, if we wanted to create a Stack Overflow Careers-focused mobile app. And while I don't recommend changing teams or project around every month, keeping our roles interesting, relevant, and exciting is something every developer can  control and benefit from.

*Arie is a developer on the Careers team at Stack Exchange. You can follow him on [Twitter](https://twitter.com/arielitovsky).*
