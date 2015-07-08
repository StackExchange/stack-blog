---
author: will
comments: true
date: 2015-01-27 19:04:16+00:00
layout: post
redirect_from: /2015/01/targeted-jobs-for-stack-overflow
slug: targeted-jobs-for-stack-overflow
hero: https://i.stack.imgur.com/8jhTn.jpg
title: Targeted Jobs for Stack Overflow
wordpress_id: 15318
tags:
- company
- announcement
- careers
- stackoverflow
---

Stack Overflow Careers was announced [five years ago](http://blog.stackoverflow.com/2009/10/introducing-stack-overflow-careers/) with a simple mission statement:


<blockquote>We believe that <strong>every professional programmer should have a job they love</strong></blockquote>


To help you find a job you love, we need to match you with the right job at the right time. We do that by [helping you create a profile that brings the right employers to you](http://blog.stackoverflow.com/2011/02/careers-2-0-launches/), and by showing you relevant job ads from our [job board](http://careers.stackoverflow.com/jobs) on Stack Overflow. With [over 6,000 companies](https://careers.stackoverflow.com/companies) that advertise on Stack Overflow Careers, we're getting closer to our goal of having a great job for every developer.

Until today, the job ads that we show on Stack Overflow were pretty stupid: they targeted solely based on location, and ignored all the other information about what you're looking for and what kind of job it is. They didn't even care about whether the job was in a technology that you were interested in. So today* we're launching the first step in showing you jobs that we think are an actual match for you.

_*If you just ran to a question to see how targeted the jobs were and left disappointed, don’t worry. This feature is just launching today and most employers haven’t had a chance to target their jobs yet. You’ll see the difference over the coming months._


## Developer Types, Tech Ecosystems, and Tech Tags


Many of you will start noticing that the jobs you see aren’t just in your area, but are related to the question you’re viewing, a question you’ve answered, or something you’ve asked about. We’re using this little bit of data, along with the location data we were already using, to predict what type of job you’re more likely to want to apply to. We then do some [predictive modeling ](http://kevinmontrose.com/2015/01/27/providence-machine-learning-at-stack-exchange/)based on this information to target mobile jobs at mobile devs, front-end web development jobs at front-end devs, and even more complex stuff based on technology stack and specific tags.

It’s difficult to show you an example of a targeted ad. We haven’t changed much about the ad design or even how the job is displayed in the ads. However, we _can_ show you the other side, how the employer is targeting their jobs.


[![Targeting-Overview](https://i.stack.imgur.com/8oSNi.png)](https://i.stack.imgur.com/8oSNi.png)


This is all organized into three tiers of targeting criteria:



	
  1. **Developer Types**: The broadest description of a developer.[![](https://i.stack.imgur.com/MJXyf.png)](https://i.stack.imgur.com/MJXyf.png)

	
  2. **Technology Ecosystems**: A narrower description, best described as tag clusters.  Python includes frameworks like Django and Flask. Cloud (back end) implies knowledge of AWS, Microsoft Azure, Rackspace, etc.[![](https://i.stack.imgur.com/mymW4.png)](/images/wordpress/tech-eco.png)

	
  3. **Stack Overflow Tags**: The most finely-grained descriptor. These draw straight from the top 1,000 most popular tags on Stack Overflow.[![](https://i.stack.imgur.com/U9oqI.png)](https://i.stack.imgur.com/U9oqI.png)


It’s really that simple. Once employers fill out a targeting profile for a job, we’ll try and predict which of those jobs you’ll be interested in.


## Fine, but these are just ads. Why should I care?


Hopefully this doesn’t change much about how you use Stack Overflow in your daily life. Job ads are only a small part of our page content, but we hope this launch will improve your odds of seeing the right job opportunity at the right time. So far it appears to be working. Initial testing of targeted jobs over the past few months have demonstrated significant progress toward our goal of showing relevant job ads to each developer, as clickthrough rates increased 21-30%. Not bad for a V1!

We also want to let you know exactly how we’re targeting jobs, so our newly created data team will be talking about building out the infrastructure for this project, and all the details of what went into it. You can follow these posts on [Kevin Montrose’s blog](http://kevinmontrose.com/2015/01/27/providence-machine-learning-at-stack-exchange/) starting today. [Jason Punyon](http://jasonpunyon.com) will also be adding to this series later this week and next.

Additionally, if you want to see your personal prediction data, or if you want to disable predictions, you can do that from the [user preferences page](http://stackoverflow.com/users/prediction-data).


## This sounds cool; I want to use it to hire a developer!


If you want more details on how this works for employers, go visit our [Stack Overflow Careers blog](http://blog.careers.stackoverflow.com/2015/01/27/hiring-developers-just-got-easier-with-our-new-targeting-feature/). If you want to dive right in, you can post a job now and [fill out a targeting profile](https://careers.stackoverflow.com/products/listings/?utm_source=careers-blog&utm_medium=blog&utm_campaign=careers-blog-product-pages-targeting#targeting). And if you already have a job running, you can edit it to add targeting for the rest of its run.

That's it! As always, if you have questions or comments feel free to post on [Meta Stack Exchange in the 'Careers' tag](http://meta.stackexchange.com/questions/tagged/careers).
