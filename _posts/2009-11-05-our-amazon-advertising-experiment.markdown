---
author: jeffatwood
comments: true
date: 2009-11-05 15:00:43+00:00
layout: post
redirect_from: /2009/11/our-amazon-advertising-experiment
hero: 
slug: our-amazon-advertising-experiment
title: Our Amazon Advertising Experiment
wordpress_id: 2122
tags:
- company
- design
---


Do you remember when I discussed the crushing disappointment that is Google AdSense in [Podcast 64](http://blog.stackoverflow.com/2009/08/podcast-64/)? If Stack Overflow, a site that does [a million pageviews a day](http://blog.stackoverflow.com/2009/09/one-million-pageviews/), can't make enough from AdSense to pay even one person half time -- and let me tell you, that's being overly generous based on the actual income it generated -- how does _anyone_ make a decent living with AdSense? Seriously, how? Exclusively talking about Mesothomelia and Asbestos, or what?



As a result, we dropped AdSense like a hot (or, rather, a particularly cold) potato. Instead, we turned to our pal Alex of [The Daily WTF](http://thedailywtf.com), and hooked into his curated ad network for software developers. We are firm believers in **responsible** (read: no flash, no animation) and **restrained** (read: limited to 3 ad slots, reduced ads for >200 rep) advertising. This has worked quite well for us so far. How well? On the order of **fifty to a hundred times better than AdSense!** I am not exaggerating. Those are actual numbers.



Even though Alex does a great job, we always have a lot of left over unsold ad space. And as the site has grown over the last 6 months, this gap has widened. So then the question becomes -- if AdSense doesn't work for us (and boy, does it _ever_ not work for us) -- then what can you do with that **remnant ad space**? I hate the word monetization with a passion, but surely something useful could be done here?



That's when [Portman Wills](http://portmanwills.com/) approached us. He's not only an old school 4 digit [Stack Overflow user](http://stackoverflow.com/users/1690/portman) and fellow programmer -- he also has extensive experience in his previous gigs with advertising code.



Portman is currently busy building cool stuff like [shuffletime](http://shuffletime.com/c/codinghorror) (not to mention his hilarious parody sites [woofer](http://woofertime.com/) and [feeling unlucky](http://unluckytime.com/)). But he was enthused about the opportunity to help out Stack Overflow -- and maybe, just maybe, generate some ads that were actually (gasp!) _useful and relevant_ to his fellow programmers at the same time. 



Thus, Portman generously offered to build a custom ad-serving site for us, which we gladly hosted at rads.stackoverflow.com.





>
Rads has three main components:

> 
> 

> 
> 

>   * A spider which uses the Amazon Product Advertising API to crawl the Amazon product catalog.

>   * A website which renders an advertisement based on Stack Overflow tags.

>   * Some analytics to determine which ads, books, and tags are most effective.


> 
> 
The spider was fed the top 5000 tags on Stack Overflow. For each tag, it preformed a keyword search on the “Computers & Internet” node, returning the top 10 books with five-star reviews, sorted by number of reviews.






You can read the full skinny in [Portman's summary](http://blog.stackoverflow.com/summary-of-amazon-remnant-ad-experiment/). We had **high hopes of building something that connected great programmers with quality programming books on Amazon.** The ads looked nice, too:



<table >
<tr >

<td >
<img src="/images/wordpress/so-amazon-ads.png" alt="so-amazon-ads">

<td >
<img src="/images/wordpress/so-amazon-ads-2.png" alt="so-amazon-ads-2">
</tr>
</table>



Excellent plan, right? Smart. Clever, even!



Well, it was a **complete and utter failure**.



Despite our purported cleverness, it didn't work. Not even a _little_. The Amazon ad experiment was a total failure by any metric I can think of. Clicks, revenue, goodwill, newton-pounds, cuils, you name it. It was literally a waste of everyone's time. Even flipping burgers would have paid more.



But this failure was not for lack of trying. If a guy as skilled as Portman -- who not only has a deep background in custom advertising, but is also a programmer capable of writing a solution tailored to our specific audience -- can't make this work, **I had to regretfully conclude that _nobody could make it work_**. It's just not possible.



So we scrapped the whole thing, and [we're going in a different direction](http://meta.stackoverflow.com/questions/23899/proposal-free-vote-based-advertising-for-open-source-projects).  More news on that soon.



But in the meantime, since we had our fancy-shmancy Amazon Affiliates account set up, we might as well put it to good use. Even way back in the original Stack Overflow beta, people were proposing that we [convert any Amazon book links to Stack Overflow amazon affiliate book links](http://meta.stackoverflow.com/questions/10948/would-it-be-a-problem-if-all-amazon-links-were-converted-to-affiliate-links). I was hesitant to do this at the time, but given our failure, I was licking my wounds. I was willing to give it a try. Particularly since the community seemed totally OK with the concept.



So, onward to plan B: we now [auto-insert Stack Overflow affiliate info into any amazon book links](http://meta.stackoverflow.com/questions/26964/auto-inserting-stack-overflow-affiliate-into-all-amazon-book-links) posted on Stack Overflow. Oh yeah, and here's the kicker. These silly little rewritten text links work **200%-300% better than our custom amazon book ads!**



Go figure.



All I can say is, advertising is hard, let's go shopping! And when it's not hard, [it's borderline scammy](http://www.techcrunch.com/2009/11/01/how-to-spam-facebook-like-a-pro-an-insiders-confession/), which is something we just don't do at Stack Overflow.



At any rate, I'm glad Portman is here to take the blamehelp. Apparently we can add advertising to the long, long list of things that we suck at. But we do plan to [suck less every year!](http://www.codinghorror.com/blog/archives/000530.html)

