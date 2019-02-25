---
layout: post
title: "How Do Software Developers in New York, San Francisco, London and Bangalore Differ?"
author: drobinson
date: 2016-11-30
tags:
- engineering
- company
- stackoverflow
- data
---
 
When I tell someone Stack Overflow is based in New York City, they're often surprised: many people assume it's in San Francisco. (I've even seen job applications with "I'm in New York, but willing to relocate to San Francisco" in the cover letter.) San Francisco is a safe guess of where an American tech company might be located: it's in the heart of Silicon Valley, near the headquarters of tech giants such as Apple, Google, and Facebook. But New York has a rich startup ecosystem as well- and it's [a very different world](http://www.businessinsider.com/difference-between-nyc-and-sf-tech-scene-2016-7) from San Francisco, with developers who use different languages and technologies.

Here on the Stack Overflow data team we don't have to hypothesize about where developers are and what they use: we can measure it! By analyzing our traffic, we have a bird's eye view of who visits Stack Overflow, and what technologies they're working on. Here we'll show some examples of what we can detect about each city based on one year of Stack Overflow traffic.

![](https://i.stack.imgur.com/cRPva.png)

In this post we're going to focus on the four cities that visit Stack Overflow the most: San Francisco, Bangalore, London, and New York. (In this analysis, we counted all traffic within 50 miles of a city: this means San Francisco includes a larger part of the "Bay Area", such as Mountain View and Cupertino).

### San Francisco vs New York

First we'll compare the two most popular American cities for software development: San Francisco and New York.

When developers are using a programming language or technology, they typically visit questions related to it. So based on how much traffic goes to questions tagged with Python, or Javascript, we can estimate what fraction of a city's software development takes place in that language.

![](https://i.stack.imgur.com/q3hJI.png)

For example, there were 187 million question views from San Francisco in the last year, and we can see that 12.8% of these visits were to questions with the Python tag, compared to 10.3% of New York's traffic.

Most of these common technologies look like they make up a fairly similar fraction of NY and SF traffic, but we're interested in stark differences. What tags (among the 200 most high-traffic tags) showed the largest difference between San Francisco and New York?

![](https://i.stack.imgur.com/LF9V2.png)

One clear difference: New York has a larger share of Microsoft developers. Many tags important in the Microsoft technology stack, such as C#, .NET, SQL Server, and VB.NET, had about twice as much traffic in New York as in San Francisco.

There are also patterns in the technologies that are more common in the San Francisco area, especially languages developed by Apple (Cocoa, Objective-C, OSX) and Google (Go, Android). We can also see several influential open source projects, especially ones associated with Apache (Hive, Hadoop, Spark).

Rather than looking only at the most dramatic changes, we could visualize the SF/NY ratio compared to the total visits:

![](https://i.stack.imgur.com/1gxZU.png)

This confirms that C# (in NY) and Android (in SF) stand out as the highest traffic tags that show different behavior, with tags such as Excel, VBA, Cocoa, and Go showing more even dramatic differences. Meanwhile, the Java tag has about the same level of traffic in each city, as do several "language agnostic" tags such as "string", "regex", and "performance".

### New York, San Francisco, Bangalore, and London

Let's expand the story to include Bangalore, India, and London, England. Together these four cities make up 11.1% of all Stack Overflow traffic.

Each of these cities is the "capital" of particular tags, visiting them more than the other three cities do. Which tags does each city lead in?

![](https://i.stack.imgur.com/9NX1c.png)

This fills out more of our story:

* **London has the highest percentage of developers using the Microsoft stack**: while New York had more Microsoft-related traffic than San Francisco, here we see London with a still greater proportion. Since both London and New York are financial hubs, this suggests we were right that Microsoft technologies tend to be associated with financial professionals.
* **New York leads in several data analysis tools**, including pandas (a Python data science library) and R. This is probably due to a combination of finance, academic research, and data science at tech companies. It's not a huge lead, but as an R user in New York I'm still personally happy to see it!
* **Bangalore has the most Android development**, with two to three times as much traffic to Android-related tags as the other three cities. Bangalore is sometimes called the ["Silicon Valley of India"](http://www.nytimes.com/2006/03/20/business/worldbusiness/is-the-next-silicon-valley-taking-root-in-bangalore.html) for its thriving software export industry, with [Android development](http://247wallst.com/apps-software/2016/11/18/where-do-all-those-mobile-apps-come-from/) playing the largest role.
* **San Francisco leads in the same technologies as it did in the comparison with New York** (except for Android). In particular (thanks to Mountain View), it's indisputably the "Go capital of the world." (This is true even if we look at the 50 highest-traffic cities rather than just the top 4).

This portrait of four major developer hubs is is just one of many ways Stack Overflow traffic can tell us about the global software engineers ecosystem. Whether you want to understand developers, hire them, engage them, or make your own developers more efficient, we have solutions to help you solve your problems. Check out [Developer Insights](https://business.stackoverflow.com/research/learn-more) to learn more.
