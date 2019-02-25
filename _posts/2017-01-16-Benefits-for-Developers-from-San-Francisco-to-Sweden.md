---
layout: post
title: Benefits for Developers from San Francisco to Sweden
author: juliasilge
date: 2017-01-16
source: https://www.stackoverflowbusiness.com/blog/what-benefits-are-companies-offering-developers
description: I just started my new job here at Stack Overflow, and like most of us, one thing I think about when considering a career move is what kind of benefits a company offers. Firms looking to hire developers can create a company page here at Stack Overflow. This means that we here on the Data Team can explore what types of benefits companies offer developers and how those benefits change across companies of different sizes or in different locations. In this post, we'll use text mining and data visualization to investigate the benefits companies offer to the developers they hire.
tags: 
- engineering
- company
- data
---

<link rel="canonical" href="https://www.stackoverflowbusiness.com/blog/what-benefits-are-companies-offering-developers">

I just started my new job here at Stack Overflow, and like most of us, one thing I think about when considering a career move is what kind of benefits a company offers. Firms looking to hire developers can create a [company page](http://stackoverflow.com/jobs/companies) here at Stack Overflow. This means that we here on the Data Team can explore what types of benefits companies offer developers and how those benefits change across companies of different sizes or in different locations. In this post, we'll use text mining and data visualization to investigate the benefits companies offer to the developers they hire.

## Most Common Benefits

Check out [Stack Overflow's own company page](http://stackoverflow.com/jobs/companies/stack-overflow) (so meta!) to see an example of what a company page can look like; each company can list benefits as text describing what they provide. To start with, probably to no one's surprise, most companies with pages here on Stack Overflow offer developers health insurance, paid vacation, and a retirement plan. Other very common benefits include flexible schedules and stock options. When we analyzed the benefits posted by companies on Stack Overflow, these were the most common, and certainly I know they are high priorities for me!

![common benefits](https://www.stackoverflowbusiness.com/hs-fs/hubfs/most%20common%20employer%20benefits.png?t=1484581515261&width=1074&height=896&name=most%20common%20employer%20benefits.png)

Here we see that companies use different combinations of words to describe very similar benefits; there are really only a few separate concepts represented in this chart of most common benefits. Also notice that companies like to communicate that they offer competitive salaries, even though I am not quite sure that counts as a benefit per se.

Next, let's explore how the words that companies use are connected to each other. Companies use words in combination together to describe benefits; which words occur most often together?

![benefit word cloud](https://i.stack.imgur.com/Mc1sY.png)

We see clustering around flexible/schedule/hours, medical/dental/vision/insurance/health, competitive/salary/compensation, paid/vacation/time/holidays/time, and several others. This network shows us the words that occur most often together, such as word pairs like office space, stock options, and Macbook Pro. Also, PING PONG!

These results on most common benefits are interesting, but we would like to dig a little deeper and begin to find differences among the benefits offered by various kinds of companies.

## Company Size

I have worked at companies from the extremely small to the large and corporate; the culture and benefits offered have been quite different across these differently sized companies. What do companies of various sizes communicate about their benefits on their company pages? Let's find the words from the benefit descriptions that exhibit the largest differences between how often small companies use them and how often large companies use them.

![small company benefits](https://i.stack.imgur.com/9Ns24.png)

We can see some significant differences in these words between small and large companies. When the smallest companies describe the benefits of working there, they are more likely to use words about flexible hours, the equity and salary you can earn, and their team's office environment. And COFFEE!

![large company benefits](https://i.stack.imgur.com/a3BVz.png)

The largest companies don't words like the ones above, but instead talk about programs, assistance, discounts, and plans. (And I'm sure there is no coffee at the big companies whatsoever.) It is obvious just from the words that these companies use that they are very different types of places to work.

## Cities

In a recent post, David Robinson [compared several important cities](https://stackoverflow.blog/2016/11/How-Do-Developers-in-New-York-San-Francisco-London-and-Bangalore-Differ/) and explored what types of traffic to Stack Overflow are more or less common in them. Let's also look at some geographical differences here and find what words in benefit descriptions are mentioned with the highest frequency in different cities relative to that word's frequency overall in the benefit descriptions. Let's start out with some cities in the United States that have a high number of companies with pages on Stack Overflow.

![benefit descriptions](https://i.stack.imgur.com/lBII1.png)

There are more cities than sizes of companies so we are using a lower minimum number of mentions here. Companies in the largest cities like New York, Los Angeles, Washington, DC, and Chicago all talk about the commuter or transit benefits they offer, while these are not high frequency words at all for companies in smaller cities like Austin and Atlanta where people are more likely to use cars. Companies in Austin do use words about their kitchens, bars, and various beverages being on tap. Los Angeles and New York both have movies, Seattle has its espresso, and Chicago has its soda [although I would have guessed they serve pop there](http://popvssoda.com/). A few of these cities have words about dependents in their highest relative frequency words but Atlanta is the only one that has adoption benefits mentioned often enough to see it here. In San Francisco, you may need to tell your dependents that you'll be eating dinner at work, rather than at home.

## Countries

An important proportion of Stack Overflow's community and an important proportion of the jobs on Stack Overflow are from companies outside the United States, so let's examine how benefits differ across several countries. Companies from some countries, like Germany and France, tend to use languages other than English on their company pages because that is most appropriate for their hiring; we'll exclude those from this plot and just look at some countries that have most of their company pages in English. Which words have the highest relative frequency for each country?

![countries benefits](https://i.stack.imgur.com/HJ5Xk.png)

Sweden sounds like a really great place to work, with its parental leave, massages, and breakfast. Tech companies in Australia who have company pages on Stack Overflow also are doing a very appealing job of representing themselves, with their diverse, social offices and birthday celebrations. At Stack Overflow, we currently have the most company pages from the United States and the United Kingdom. The words with the highest relative frequency for the United Kingdom companies include words about holidays, pensions, and childcare vouchers; for the United States, the highest relative frequency words include those about pre-tax options for various benefits, commuter and transit plans, and volunteer opportunities.

Some of the differences we see in these charts are only about vocabulary; I have never once said I was going on holiday but if I lived in the United Kingdom I certainly would. Some of the differences we see are about cultural norms for different types of companies or countries or cities, where work culture or society in general may be different. Keep in mind that looking for the highest relative frequency words as we've done in this post obscures the fact that the most common benefits across all companies are still ones like a retirement plan, health insurance, and paid vacation. These types of benefits don't show up in the charts because they are not high relative frequency words for any individual city or country or size; all types of companies use them at about the same rate.

These three explorations of how benefits vary among different types of companies can give developers insight in what the market is like out there, and we here on the Data Team are here to look at questions just like this. If you are on the job market, you can use [Company Pages](http://stackoverflow.com/jobs/companies) to find a companythat is the right fit for you.


