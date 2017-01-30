---
layout: post
title: "Developers without Borders: The Global Stack Overflow Network"
author: drobinson
comments: false
date: 2017-01-30
tags:
- engineering
- company
- stackoverflow
- data
---

A while back I encountered a developer who shared a story of a positive experience on Stack Overflow. He'd asked a question late one Sunday on Labor Day weekend, and been delighted that he'd quickly gotten multiple responses. He said he was impressed that someone else in San Francisco was also "burning the midnight oil," and noted it as a testament to the work ethic in Silicon Valley.

It was great that he'd had a positive experience, but he'd made one incorrect assumption: there was no reason to think the users who'd answered his question were also staying up late in Silicon Valley. They could be halfway around the world, where it wasn't midnight on a holiday weekend but rather a normal Monday afternoon. Indeed, some analysis of typical answering patterns on late Labor Day Sundays indicates that was almost certainly the case!

It's easy in the American tech environment to forget that Stack Overflow is a global community, and that it couldn't have been successful otherwise. Since its start, Stack Overflow has let questions and answers pass fluidly across national borders, creating a worldwide network of programming knowledge. I thought I'd share some analyses of how global Stack Overflow is, and how we've benefitted from it.

## Stack Overflow around the world

What countries ask questions and provide answers on Stack Overflow?

![](https://i.stack.imgur.com/hXv1z.png)

Stack Overflow is an American company, but only 29.4% of its questions and answers have been contributed from within the US. Countries such as India, the UK, and Germany make up the next largest contributors, but about a quarter of questions and answers are contributed from the 200+ countries that each have a small (<1%) share. (The relative proportions are pretty similar if you look just at questions asked or answers provided.)

The Stack Overflow community has always been open to the world. It has gotten more global over its history, with the United States and the United Kingdom contributing a smaller fraction of its questions and answers each year, and India and smaller countries contributing a larger portion.

![](https://i.stack.imgur.com/W5g0B.png)

### Questions across borders

What does a typical weekday look like for Stack Overflow Q&A? There are about 8,000 questions asked, and 9,500 answers provided. These come from 150 separate countries, and 84.7% of answers come from a different country than the asker.

What does that global exchange of knowledge look like?

<iframe width="100%" height="600" scrolling="no" frameborder="no" src="/content/globe.html"></iframe>
			
(You can rotate or resize the globe with your mouse). Each one of these arcs represents one user getting help from another. I've heard programmers refer to Stack Overflow as their "external brain"; these are its neurons.

(Incidentally, we took several measures to anonymize the interactive visualization above to prevent the possibility of users being matched to locations, including, but not limited to, fuzzing locations and removing ones without a minimum number of distinct users.)

So if I ask a question from my office in the US, who might answer it?

* There's a 64.1% chance the answer would come from outside the US
* This depends a bit on what programming language you ask about. For example, PHP questions asked in the US have a 75% chance of being answered from outside the US, while R questions have only a 54.9% chance.
* Questions asked from non-US countries are even more likely to be answered across borders; for example, a question asked in the UK has a 89.7% chance of the answer coming from outside the UK.

It makes sense that questions flow freely across national borders, but you might expect time zones to make some difference. However, it turns out that's a small factor in who answers your questions.

![](https://i.stack.imgur.com/DmNYk.png)

Just 16.9% of answers come from a user in the same time zone as the person who asked it, and of ones that don't, a user is almost as likely to get an answer from someone eleven hours away as someone who is three hours away. This is both because answers don't necessarily come immediately, and because even immediate answers may come from someone working on a different schedule (for example, a question asked in the morning in New York could get answered in the evening in Mumbai).

## Seven countries

I've wanted to write about the global nature of Stack Overflow's user base for a while, but this post has a particular motivation. Last Friday, President Trump issued an executive order banning immigration to the United States from seven countries: Iraq, Iran, Syria, Libya, Sudan, Somalia, and Yemen.

Many leaders of tech companies have expressed their outrage. Alongside many other concerns, most recognized the enormous contributions of immigrants from these countries to the American tech industry. This includes our [CEO Joel Spolsky](http://meta.stackoverflow.com/questions/342440/time-to-take-a-stand?cb=1), who pointed out that developers in these seven countries make up a valued part of our userbase. I'd like to share more about how they fit in.

In just the last week about 125,000 developers in these seven countries visited Stack Overflow. (If you're wondering, they visit a bit more Matlab, C#, and Android than the average country, and less R and Linux). This isn't counting the many developers from these countries who have since emigrated elsewhere.

Users from these seven countries have written over **225,000** posts on Stack Overflow, including over **110,000** answers to other users' questions.

Questions and answers from these seven countries have, in combination, **been visited over 500 million times.** If I made an interactive globe showing all the ways developers in these countries have helped others through the knowledge they contributed, it would crash your browser.
 
### Conclusion

The point of this post is not to focus on these seven countries; there are hundreds of countries that make Stack Overflow the powerful resource that it is. It's to share just how much we owe to the global community of developers, and to celebrate what's possible when a community is built on cooperation and trust across borders.

If you're a software developer, you've likely gotten help from questions and answers from these seven countries, even if you didn't know it. You may have products and open source tools developed by immigrants from them. If you've ever used the Stack Exchange mobile app, you've benefitted directly [from the work of a former Iranian refugee](http://meta.stackoverflow.com/a/342455/712603).

Supporting that kind of global cooperation is what Stack Overflow is all about.
