---
layout: post
date: 2016-12-15
title: "You Can Now Play with Stack Overflow Data on Google’s BigQuery"
author: kcpike
tags: 
- company
- stackoverflow
- announcements
---

If you’ve ever wanted to get a statistic about Stack Overflow or your favorite Stack Exchange site, you may have used our [Stack Exchange Data Explorer](http://data.stackexchange.com/), aka SEDE. (This is separate from our regular "[data dumps](https://archive.org/details/stackexchange)" meant for researchers and others who want to work with large chunks of the content.) [Launched in 2010](https://stackoverflow.blog/2010/06/introducing-stack-exchange-data-explorer/), SEDE is a web tool you can use to share, query, and analyze the data from our network. It’s updated weekly with all our latest changes and additions, minus a few sensitive things like people’s email addresses and voting behavior. 

We’ve seen a lot of creative uses of SEDE, from finding out “[What questions does Jon Skeet have a higher/lower score on than me](http://data.stackexchange.com/stackoverflow/query/3160/jon-skeet-comparison)?” to “[Where have I 'met' another user](http://data.stackexchange.com/stackoverflow/query/25355/have-we-met)?” and [many other questions keeping the community up at night](http://data.stackexchange.com/stackoverflow/queries?order_by=featured). 

Today, we’re thrilled to expand your ability to play with this data by [working with Google and releasing it](https://cloud.google.com/bigquery/public-data/stackoverflow) (with regular updates) on BigQuery. Anyone with a Google Cloud Platform account can use SQL queries or their favorite tool to sort, join, and analyze away.

**What makes BigQuery different from SEDE?**

* Go beyond 50,000 rows ([our SEDE limit](http://varianceexplained.org/r/stack-lite/)). BigQuery lets you go big. 
* Unlike SEDE, BigQuery comes with a REST API. You can connect all sorts of tools like Tableau, re:dash, Looker, R, and pandas to it.
* JOIN all the things: BigQuery hosts a [wide variety of datasets](https://cloud.google.com/bigquery/public-data/) from GitHub’s to NOAA’s weather data. You can make all sorts of useful or useless but entertaining queries across these.

[Go check out our dataset now and poke at it](https://cloud.google.com/bigquery/public-data/stackoverflow). Feel free to share your results on [reddit.com/r/bigquery](https://www.reddit.com/r/bigquery/).


