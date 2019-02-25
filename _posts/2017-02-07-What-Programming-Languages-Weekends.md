---
layout: post
title: "What Programming Languages Are Used Most on Weekends?"
author: juliasilge
date: 2017-02-07
tags:
- engineering
- company
- stackoverflow
- data
---


For me, the weekends are mostly about spending time with my family, reading for leisure, and working on the open-source projects I am involved in. These weekend projects overlap with the work that I do in my day job here at Stack Overflow, but are not exactly the same. Many developers tinker with side projects for learning or career development (or just for fun!) and at Stack Overflow, we support all types of technologies, from professional to hobbyist. Whenever people are working, we're available to answer their questions. But what languages tend to be asked about on weekends, as opposed to weekdays?

Let's use our public [StackLite dataset](https://www.kaggle.com/stackoverflow/stacklite) on Kaggle to explore differences between questions that are posted on weekdays and weekends. This dataset is available for anyone to analyze; you can use a Kaggle Kernel to get started on your own question about Stack Overflow questions and tags.


## Comparing tags

For this analysis, we will use non-deleted questions and tags used on more than 10,000 questions. We defined weekends using UTC dates, which may not exactly overlap the weekend for all users. Overall, this includes 10,451,274 questions on weekdays and 2,132,073 questions on weekends. The difference in number there is mostly due to people largely using Stack Overflow for their jobs on weekdays, and we see this pattern both in questions posted and traffic to our site.

Because of this weekday/weekend pattern, we're not interested in whether tags were busier on weekends than weekdays; basically all tags are busier on weekdays. Instead, let's explore which tags made up a larger share of weekend questions than they did of weekday questions, and vice versa.

Which question tags have the biggest difference in relative frequency?

![comparing weekends and weekdays](https://i.stack.imgur.com/Hz3mt.png)


To explain this a bit more, let's look at some numbers. The programming language Haskell makes up 0.365% of weekend questions in this dataset, but only 0.21% of weekday questions, showing it is unusually popular on weekends. Sharepoint makes up 0.0683% of weekend questions, and 0.188% of weekday questions, showing it is more often used on weekdays.

It brings me great delight that the functional programming language Haskell leads up the weekend-shifted technologies, because this is basically me:

![Haskell cat](https://i.stack.imgur.com/7k8tN.jpg)

I haven't learned Haskell. But kudos to all of you who are using your weekends to do so! And now enjoy [this joke](https://xkcd.com/1312/) about Haskell, which is a language popular among academics and mathematicians but not typically used in corporate environments.

Let's make some other observations!

* We see some low-level technologies are popular on weekends, such as C, C++, pointers, and assembly, as well as tags related to math, such as algorithm, recursion, and (of course) math.
* Heroku and Meteor are app platforms often used for rapid prototyping, which may suggest they are being used for weekend hobbyist projects.
* Many of the weekday-shifted technologies are connected to Microsoft, including tags related to Excel, SQL Server, VBA, and T-SQL. Others include enterprise technologies such as Oracle.


We can also visualize these relationships by comparing the total number of questions to the relative frequencies.

![weekday weekend scatterplot](https://i.stack.imgur.com/sdFa6.png)

Tags that are further to the right in this plot (JavaScript, Java, C#, PHP, etc.) have more questions asked about them, and tags that are further to the left have fewer questions asked about them. Tags that appear close to the dashed line have about an equal share of weekend questions as weekday questions, and tags that are farthest from the dashed line exhibit the largest weekend/weekday differences.

We can see again that most of the popular tags that are weekday-shifted are connected to Microsoft (C#, ASP.NET, SQL Server, Excel, VBA) and many of the weekend-shifted tags include technologies like C and C++, as well as newer languages such as Swift and Node.js.

## Working for the weekend

We can also use this dataset to examine how developers have changed how they use these technologies over time. We can use modeling to find the tags whose weekend proportion (the percentage of questions that are asked on the weekend) has changed the most over time. For tags with more than 20,000 questions, which ones are being posted about less on weekends now compared to the past?

![decreasing](https://i.stack.imgur.com/TjFxX.png)

We see tags here like Ruby on Rails and Scala that developers used at a higher rate on weekends several years ago, but now use at a lower rate on weekends and more on weekdays. These technologies were more weekend-oriented in the past, but are now proportionally part of more developers' weekday work lives. The version control system SVN also decreased in weekend use over these years; most likely the advent of GitHub (launched in 2008) has led to fewer people using SVN to manage code for personal weekend projects.

![increasing](https://i.stack.imgur.com/LUQei.png)

If we look for the tags that have increased the most in weekend activity, we see the game engine Unity3D, as well as a number of tags used for building mobile apps. It looks like developers are designing more games and apps on the weekends now than in previous years. A good way to spend a weekend!


We used [openly accessible data](https://www.kaggle.com/stackoverflow/stacklite) to do this analysis, and look forward to seeing what other developers in our community may find by exploring the data products that we make available. We on the Data Team use datasets like this one to answer diverse questions about understanding, hiring, and engaging with developers. To see how we can solve your problems using data and analysis, learn more about [Developer Insights](https://www.stackoverflowbusiness.com/research/learn-more) at Stack Overflow.
