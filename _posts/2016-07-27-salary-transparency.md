---
layout: post
title: Salary transparency at Stack Overflow
author: matt
tags: 
 - company
 - engineering
langs:
 - en
---

We believe (and developers [tell us](http://stackoverflow.com/research/developer-survey-2016#work-job-priorities)) that job seekers should be empowered with as much information as possible when looking for a job – especially salary. So we ran an experiment on Stack Overflow Jobs to see if the evidence would support it.

Remarkably, we learned that job listings which include a salary range got **[75% more clicks](#75)** than job listings that don’t. With this experiment, we’re even more convinced that transparency isn’t just the right thing to do, it’s good for companies, too.

Along with much of the tech community, we were impressed with [Buffer’s](https://buffer.com/salary) boldness and leadership in salary transparency. So…

##Introducing the Stack Overflow salary calculator

We’ve created a **[salary and skills calculator](https://stackoverflow.com/company/salary)** for Stack Overflow’s engineering, design and product roles. This has been transparent internally for a while; now it’s transparent with you.

[![Try the salary calculator](https://i.stack.imgur.com/wucYG.png)](https://stackoverflow.com/company/salary)

Those who know Stack Overflow know that we work hard to work in public. This is a continuation of that tradition.

###What we hope

We hope that moves like this will inspire other employers to greater transparency.

A lack of transparency is what economists call an *information asymmetry*: it’s in companies’ interests to keep these numbers close to the vest. Individuals are uncomfortable talking about salary sometimes, too.

We believe that conventions can change. If more companies become open on salary, perhaps openness will become expected.

###Work in progress

Our salary calculator doesn’t cover every role at Stack Overflow. It doesn’t include equity, and only describes US salaries. (International employees use the same system but it’s not merely a currency conversion.) In the spirit of “default public”, we would rather share an incomplete system than not share at all.

<a name="75"></a>
##The experimental details: 75% more clicks
 
(By [David Robinson](http://stackoverflow.com/users/712603/david-robinson) and [Bret Copleland](http://stackexchange.com/users/2545189/bret-copeland))

For our experiment, we redesigned the [Stack Overflow Jobs](https://stackoverflow.com/jobs) ads to display salary ranges. We were curious: just how much effect does this information have?

We ran an A/B test, where for a random half of our users we hid the salary information from the ads they were shown, and measured the difference in clickthrough rate. Visually, it looked like this:

![Job listings with and without salary](https://i.stack.imgur.com/sISz0.png)

We expected to see an improvement, but we were surprised by the size: a 75% average increase in clickthrough rate (CTR) when we showed a job's salary range.

What if a job has a relatively low salary – is it still worth showing? Generally speaking, yes: we found that showing any salary range led to an increase in CTR, though higher salaries led to a greater bump. For American jobs, we saw roughly a 60% increase for jobs with salary ranges centered below $100K, and about a 100% increase (doubling) for salaries above $100K.

![Salary vs CTR](https://i.stack.imgur.com/Q1kPQ.png)

Is this just an effect of novelty, where users were surprised to see salary? Unlikely – we didn't see any decline in the effect, and it has been consistent in the months since. We've tried many other changes to ads and have never seen anything this dramatic.

Clickthrough rate isn’t everything, but it’s an encouraging sign that advertising a salary range will help draw developers to a position.

####[Try the Stack Overflow salary calculator...](https://stackoverflow.com/company/salary)

###Further reading

- Joel on [How much should you pay developers?](https://blog.stackoverflow.com/2011/07/how-much-should-you-pay-developers/)
- Stack Overflow Developer Survey on [job priorities](http://stackoverflow.com/research/developer-survey-2016#work-job-priorities).