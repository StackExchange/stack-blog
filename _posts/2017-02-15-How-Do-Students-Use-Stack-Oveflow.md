---
layout: post
title: "How Do Students Use Stack Overflow?"
author: drobinson
date: 2017-02-15
tags:
- engineering
- company
- data
---
Since Stack Overflow was founded, we've described it as "a question and answer site for professional and enthusiast programmers." It supports both experienced developers who code as part of their work, and people who are learning as part of a university curriculum.

So just how many of our users are students? We on the Data Team can estimate this based on what fraction of our questions come from university ISPs. In this post, I'll share some numbers about how students (both undergraduate and graduate) use Stack Overflow, what programming languages they tend to ask about, and how this differs between schools.

# Finding students on Stack Overflow

In this analysis, we considered a question to be from a university if it was asked from an ISP whose name contained "University", "College", or "Institute of" (some manual examination showed this covered the vast majority of common cases). Not all universities have their own ISP, and students may live or work off campus, so this is probably underestimating the fraction.

Since these results may have changed since the start of the site, we considered only questions from the years 2014 through 2016. And while Stack Overflow is a global network, our ability to recognize schools from their IP addresses is less reliable outside English-speaking countries, so we considered questions only from four countries: the United States, the United Kingdom, Canada, and Australia. These are four of the seven countries that ask the most questions.

Overall, this dataset comprises 3.5 million questions.

# Questions from Universities

7.75% of questions in these countries were asked from colleges and universities. Which schools asked the most questions from each country?

![](https://i.stack.imgur.com/X31mO.png)

One notable feature is that many of these are large research universities, where many of the Stack Overflow askers may be graduate students or other academic researchers.

As you might guess, the percentage of questions from universities depends dramatically on the time of year, based on whether most schools are in session:

![](https://i.stack.imgur.com/6I4YD.png)

Notice that the percentage of questions coming from universities drops not only during the summer, but also at several typical school holidays: the start/end of the year (winter break), spring break in March, and Thanksgiving break at the end of November. The rate is also nicely consistent across the three years.

# What Tags Tend to be Asked about from Schools?

Each Stack Overflow question comes with one or more tags describing the languages and technologies it is asking about. What tags were most likely, or least likely, to come from a university?

![](https://i.stack.imgur.com/QpXgT.png)

We can see three types of questions that tend to get asked from universities. First are languages and frameworks used in academic research, such as numpy, R and (especially) MATLAB. Next are low-level languages such as C and C++, which may be used in introductory programming and operating systems classes; my first college class was taught in C. We can also see questions about algorithms and data structures, such as "algorithm", "loops", "list", and "arrays".

Among the tags least likely to be asked from universities are Microsoft technologies, such as C#, .NET, WPF and SQL Server. This makes sense since those generally tend to be popular in enterprise businesses rather than educational and research contexts.

How can we confirm our hypothesis that some tags, such as R and MATLAB, are asked by university researchers, while others are asked by undergraduate students? Let’s look at when they're asked from universities during the year. As we saw earlier, undergraduates generally ask questions mostly during the typical fall and spring semesters, while researchers likely work and ask year-round.

Here are the seasonal trends for six selected tags.

![](https://i.stack.imgur.com/HyNkR.png)

Many Java questions are asked from universities during the fall and spring, but they drop to barely a third of that level during the summer. C and C++ also appear to be mainly asked by students on a semester schedule. In contrast, R and MATLAB are pretty consistent throughout the year, with 25% or 40%, respectively, of their questions getting answered from universities no matter the month (with the exception of the winter break).

Besides the distribution across the year, tags also aren't evenly distributed among US universities. For example, in American universities, the choice of programming languages differs between public and private universities.

![](https://i.stack.imgur.com/SsPII.png)

Microsoft technologies like C#, ASP.NET, VBA and SQL Server were more commonly asked from public universities, while cloud technologies like Heroku and AWS, as well as web frameworks like Django and Flask, were more commonly asked from private universities.

Since I program in R, I was also curious what universities had the greatest amount of R. (So as to avoid having one student disproportionately affect their school's tags, we measured the percentage of users who had asked from a school who had ever asked about R).

![](https://i.stack.imgur.com/WsptR.png)

(Note that Australia had only 7 universities with at least 200 askers). The most R-heavy schools included a mix of public and private research universities, and some are recognizable as having prominent statistics programs.

This analysis gives a sense of how students use Stack Overflow differently from professional developers. In future posts we'll look deeper into this data, including considering how students differ in what questions they answer or visit, and examining how this relates to tags most visited on weekends. Whether you're a student or not, you can support others' education by [signing up for Stack Overflow](https://stackoverflow.com/users/signup) and contributing today.
