---
layout: post
title: "Developers, Webmasters, and Ninjas: What’s in a Job Title?"
author: drobinson
date: 2016-12-20
tags:
- engineering
- company
- stackoverflow
- data
---

Is there a difference between a “software engineer” and a “software developer”? How many years of experience do you need to be “senior,” or a “team lead”? Do people still call themselves “webmasters”? Does anyone actually describe themselves as a “rockstar” or “ninja”?

If you’re hiring a developer, or on the job market yourself, understanding these differences can be important to your work. At Stack Overflow, we host the [Developer Stories](https://stackoverflow.blog/2016/10/bye-bye-bullets-the-stack-overflow-developer-story-is-the-new-technical-resume/) of hundreds of thousands of engineers, representing a cross-section of several decades of the software industry.

We on the Data Team took a look at the titles developers used to describe themselves, and are sharing some of the most notable discoveries we’ve made.

## Common job titles

Let’s start simple. What were the most common job titles, over all time, from the Developer Stories in our database?

![common job titles](https://i.stack.imgur.com/6jVp7.png)

We can see, not surprisingly, that some of the most common self-described job titles include “software engineer/developer”, possibly preceded by “senior”. Together the above 12 titles make up 25.8%) of the CV items in our database.

We could go a step farther and come up with a [Markov chain](https://en.wikipedia.org/wiki/Markov_chain), showing common chains of consecutive words. Shown below are all pairs of words where each word appears in at least 1000 job titles, and where word X is followed by word Y at least 1/3 of the time.

![common job titles](https://i.stack.imgur.com/DRSg8.png)

One interesting distinction is between “developer” and “engineer”: while they’re generally synonyms, they’re easily distinguished by the kinds of words they’re paired with. We can see that “developer” is often preceded by specific technologies (“java”, “php”, “python”) or by stacks (“front-end”, “back-end”, “full-stack”). “Engineer” is preceded either by “software” (which in turn may be preceded by a level of seniority), or by a functional designation such as “quality assurance”, “test”” “devops” or “R&D”.

We can see other common pairings, such as “user interface/experience,” “team lead/leader”, or “program/product manager.” (Why isn’t my own job title, “data scientist,” in this plot? Because “data” was followed by “scientist/analyst/engineer” in similar proportions, not to mention “architect,” “warehouse,” and other such titles).

Despite the hype, only one in ten thousand resume items includes the word “ninja,” and only one in a hundred thousand is a “rock star.”

## What do job titles show about experience?

How many years of experience do you need to be a “senior software engineer”, or a “team lead”? How much experience does the average “intern” or “assistant” have?

We can answer this by looking at the developer’s **years of experience at the start of each job**. Note that this isn’t measuring (or intended to measure) someone’s skill or expertise: simply how many years of work they’ve listed on a resume before a particular job. (Here we count multiple overlapping jobs as additive, so it’s possible for someone who has been in the industry for 5 years to have 6 or 7 years of experience).

First, we picked out 26 common terms that could suggest a level of experience, such as “junior”, “intermediate”, and “senior”. How many years of experience did each represent?

![job title and experience](https://i.stack.imgur.com/Q8ghA.png)

A few observations:

* **Unsurprisingly, more than half of jobs with “trainee”, “junior”, or “internship” in the title had no previous work experience**. This is to be expected, but useful to check!
* **A typical amount of experience for a “mid/intermediate” developer is 1-3 years, for a senior developer about 4**. This is useful knowledge for both developers and employers when interpreting these job titles.
* **The median VP has almost four times as much experience as the median CEO**. Some manual examination of the data confirmed this finding. Many CEOs (especially those who fill out Stack Overflow Developer Stories) are startup founders, whereas VPs often rose to that position within a company and have more experience in the industry. (This doesn’t necessarily imply that CEOs are unqualified — just that many take such a position early in a career).

In general (not just terms we expected to be seniority-related), what common words tended to have the most extreme (most or least) experience?

![words for experience](https://i.stack.imgur.com/ZAiPE.png)

One surprise is that not all terms are related directly to seniority- for example, jobs with “DevOps” in the title tended to have around 4 years of prior experience, which makes it about as strong a signal as the word “Senior.” On the other hand, the median developer with “PHP” in their job title had only one year of experience, and the average “Android” developer had even less.

## Words changing in frequency over time

The software industry has been changing over the last twenty years, and how developers describe themselves has been changing with it. What words in job titles have been getting more common or less common in the last twenty years?

We identified the  words that showed the fastest growth and the most rapid decline.

![words showing fastest growth and most rapid decline](https://i.stack.imgur.com/7TN49.png)

Some observations:

* Being a “webmaster” is out, but being a “frontend”, “backend”, and “full-stack” web developer is in.
* Mobile technologies such as iOS and Android that entered the industry around 2007 quickly got their own job titles “created around” them (each now appears in about 3% of job titles).
* “Network admininstrator” is a less common title than it used to be, as are “systems engineer” and “systems administrator”, but “DevOps” has been increasing.

There’s a lot more that we can detect about changes in the developer ecosystem from Stack Overflow data, both from Developer Stories and from the Q&A site. Some future posts from the Data Team will look at the technologies people list on their resumes and how those have changed. If you want to help our experiments, [fill out your Developer Story today](http://stackoverflow.com/users/story/join).
