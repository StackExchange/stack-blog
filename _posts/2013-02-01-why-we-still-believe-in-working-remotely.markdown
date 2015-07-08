---
author: david
comments: true
date: 2013-02-01 19:43:01+00:00
layout: post
hero: https://i.stack.imgur.com/vuN3L.jpg
redirect_from: /2013/02/why-we-still-believe-in-working-remotely
slug: why-we-still-believe-in-working-remotely
title: Why We (Still) Believe in Working Remotely
wordpress_id: 13121
tags:
- company
- background
- culture
---

It’s 2013, almost three years after we first raised money and started growing beyond [the](http://stackoverflow.com/u/1) [first](http://stackoverflow.com/u/2) [four ](http://stackoverflow.com/u/3)[employees](http://stackoverflow.com/u/4). At the time, Jeff wrote a [great blog post](http://www.codinghorror.com/blog/2010/05/on-working-remotely.html) about working remotely, basically laying out our plan for how we were going to make it work. Now we’re a few years in and it’s time to update it with, well, what actually happened.

First, where are we now? Stack Exchange now employs 75 people, roughly evenly split between sales (and sales ops and marketing) and product (development, ops, design, community management). The product side is where our remote working happens: we have 16 full-time remote and 18 in-office developers, sysadmins, designers, and community managers. So we are very much a hybrid team, which I’ve come to believe is the best of both worlds. I’m the lead of engineering, so I’m mostly going to talk about developers, but a lot of this applies to other positions as well.



# Why we believe in letting people work full-time from home


**#1: It lets you hire good people who can’t move.** Hiring remotely opens you up to an enormous pool of people who can’t move. I can’t stress this enough: _for every one person who is in your location or is happy to move there, there are 100 more who are not._ They’re tied down by a spouse with a job, a kid in school, a visa they can’t get, or a mortgage they can’t get out of. **If you’re hiring for technical positions, hiring remotely is the best-kept, blindingly obvious secret for finding people.** By hiring remotely, we have been able to fill our team with awesome people with lots of experience, who were stuck in happily living in places like [Corvallis, Oregon](http://stackoverflow.com/users/2/geoff-dalgas) or [Forest of Dean, UK](http://stackoverflow.com/users/23354/marc-gravell) (Seriously, look it up. It’s basically The Shire.)

**#1a: You don’t lose people to silly things like their significant other going to medical school.** Before I worked at Stack Exchange, I worked at Fog Creek. I watched at least five great people leave because their family situation made it necessary to move, and Fog Creek had (at the time) a strict no-remote-workers policy. **This drove me crazy.** These were amazing employees, in whom the company had already invested deeply, who were now walking out the door because they couldn’t live in New York any more. At Stack Exchange, we’ve already had two people move away from New York, who are still happily employed doing the same job they were always doing. If we didn’t allow working remotely, we’d be down at least two great developers.

**#2: When done right, it makes people extremely productive.** Private office? Check. Flexible hours? Check. Short commute? Check. I’ll let you in on a secret: most of our remote developers work longer hours than our in-office devs. It’s not required, and probably won’t always be the case, but when going to work is as simple as walking upstairs (pants optional, but recommended) people just tend to put in more hours and work more productively.

**#3: It makes you focus on more than butts in chairs.** As a manager, I can’t easily know how many hours each person on my team is working. This is actually good for me because it _forces me to look at what they’ve done._ It’s good for the remote person as well: they can’t fool themselves into thinking that just because they’re in an office, surfing Reddit for an hour is work. In a perfect world we’d both already have this perspective, but it’s amazing how easy it is to delude yourself into thinking that “going to the office” = work.



# What we’ve learned



**#1: Remote working isn’t for everyone.** There’s a tendency to think that working from home is all sunshine and rainbows and working in your PJs. [It’s not](http://theoatmeal.com/comics/working_home). You miss out on being around people (which wears even on introverts), doing fun stuff like playing ping-pong or having lunch together, and (sometimes hardest of all) you lose a clear distinction between work and the rest of your life. Some people thrive when working from home, while others wither or just... drift. We’ve had people move both ways: remote people deciding to come in to the office, and people in the office deciding to go remote. The key, for us, is offering both and helping people decide which is best for them.

**#2: Working remotely is a skill you need to hire for.** If remote working isn’t for everyone, you better be sure that the person you’re hiring to work remotely is going to be good at it. The most important thing that we look for is that **they must be self-motivating and proactive**: self-motivating in finding things to do, proactive in communicating with the rest of the team. Our remote developers are some of the most argumentative people in the whole company, because we hired them to be that way. We like opinionated people. Opinionated people find things they care about to work on and make sure you know what they think, which is essential if you’re not sharing an office together.

**#3: You have to commit to it as a team (and a company).** There’s no halfsies in a distributed team. If even one person on the team is remote, every single person has to start communicating online. The locus of control and decision making must be outside of the office: no more dropping in to someone’s office to chat, no more rounding people up to make a decision. All of that has to be done online _even if the remote person isn’t around_. Otherwise you’ll slowly choke off the remote person from any real input on decisions.

**#4: Communication is hard (but it was always hard).** I am far from the first to point it out, but the hardest problem in growing a company from 4 to 75 people (and, presumably, to 200) is communication. When there were 4 people, everyone knew everything. When there are 75 people that no longer scales. So you have to work out your channels of communication, and that’s doubly true with remote workers because you can’t rely on overheard conversations or gossip to spread the word. You have to force yourself to be explicit in communication.



# How we do it


**#1: Google Hangouts.** Google hangouts are the lifeblood of our organization. If you haven’t tried them for video chat, you’re living in the Stone Age. We have persistent hangouts for every team available at URLs that everyone knows. We spin up one-off hangouts for quick video chats. We use them for meetings, for hanging out (no, seriously), for demos, for teaching... for everything. There really is no substitute for face-to-face conversations, and when you get to the point where people in the office are actually preferring hangouts to talking in-person because it’s easier, you know you’re on to something.

**#2: Persistent Chat.** Chat is good for shorter conversations, or quick pings to ask someone a question. It has two big benefits: (1) it’s asynchronous enough that people can get back to you when they have a second, and (2) it’s persistent, so other people can skim it and catch up on what they missed (vital when you’re in different time zones). Every company should have a chat system, whether they have a distributed team or not. It’s better than interrupting someone at their desk or dragging someone into a hangout for a quick question. We [built our own chat system](http://chat.stackoverflow.com/), but there are good alternatives like Campfire and HipChat out there.

**#3: Email.** As [flawed as email is](http://www.codinghorror.com/blog/2008/11/is-email-efail.html), it’s still alive and kicking. Email is for fully asynchronous communication (don’t use email if you need a response _today_), and for communicating status updates and decisions. We have a standing rule that all decisions must be typed up and shared with the rest of the team via email, basically [what Jeff described at the beginning](http://www.codinghorror.com/blog/2010/05/on-working-remotely.html). Each team sends out a weekly status update to the whole company giving a high-level overview of what’s going on, so teams don’t get isolated from one another.

**#4: Trello + Google Docs.** We use [Trello](http://trello.com/) for keeping track of who is working on what, and Google Docs for notes, specs, designs, etc. Both are excellent tools that you should use even if you’re not working remotely.



# That’s our story



Distributed teams aren’t for everyone, but they are working extremely well for us. Yes, they are more work, but for us it is easily worth it because of the quality of people we get and the quality of life we’re able to offer them. For us, it’s been a part of our DNA from the beginning and something we’re committed to making work long-term. Will it still work when we hit 500 employees? I don’t know, but I’m excited to find out.



# Did I mention we’re hiring?



Sound like the kind of place you’d like to work? [We’re hiring](http://stackexchange.com/about/hiring), especially [developers](http://careers.stackoverflow.com/jobs/28723/web-developer-stack-exchange-stack-exchange) and [designers](http://careers.stackoverflow.com/jobs/24481/product-designer-stack-exchange). We’re still figuring it all out, but we’ve got a [great team](http://stackexchange.com/about/team) and some really interesting problems to work on. Come be a part of figuring out what the future of remote working looks like.
