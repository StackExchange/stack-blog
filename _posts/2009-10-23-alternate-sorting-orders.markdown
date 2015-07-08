---
author: jeffatwood
comments: true
date: 2009-10-23 20:56:46+00:00
layout: post
redirect_from: /2009/10/alternate-sorting-orders
hero: 
slug: alternate-sorting-orders
title: Alternate Sorting Orders
wordpress_id: 2082
tags:
- company
- background
- community
---


As you know, we sort answers (and sometimes questions) in simple descending score order by default. Score is defined as upvotes minus downvotes. Way back in February, [Mike Schiraldi](http://stackoverflow.com/users/7598/raldi) of Reddit emailed us about an [alternate sorting mechanism](http://www.evanmiller.org/how-not-to-sort-by-average-rating.html).



After about 6 months of testing, It looks like Reddit has implemented this algorithm, and you can [read about it](http://blog.reddit.com/2009/10/reddits-new-comment-sorting-system.html) courtesy of Reddit guest blogger Randall Munroe (aka XKCD):





<blockquote>
If a comment has one upvote and zero downvotes, it has a 100% upvote rate, but since there's not very much data, the system will keep it near the bottom. But if it has 10 upvotes and only 1 downvote, the system might have enough confidence to place it above something with 40 upvotes and 20 downvotes -- figuring that by the time it's also gotten 40 upvotes, it's almost certain it will have fewer than 20 downvotes. And the best part is that if it's wrong (which it is 5% of the time), it will quickly get more data, since the comment with less data is near the top -- and when it gets that data, it will quickly correct the comment's position. The bottom line is that this system means good comments will jump quickly to the top and stay there, and bad comments will hover near the bottom.
</blockquote>





The original article, [How Not To Sort By Average rating](http://www.evanmiller.org/how-not-to-sort-by-average-rating.html), elaborates on the math.





<blockquote>
We need to balance the proportion of positive ratings with the uncertainty of a small number of observations. Fortunately, the math for this was worked out in 1927 by Edwin B. Wilson. What we want to ask is: _Given the ratings I have, there is a 95% chance that the "real" fraction of positive ratings is at least what?_ Wilson gives the answer. Considering only positive and negative ratings (i.e. not a 5-star scale), the lower bound on the proportion of positive ratings is given by:
</blockquote>





![new-scoring-math-formula](/images/wordpress/new-scoring-math-formula1.png)



He also provided some sample Ruby code that implements the above formula:

    
    
    def ci_lower_bound(pos, n, power)
        if n == 0
            return 0
        end
        z = Statistics2.pnormaldist(1-power/2)
        phat = 1.0*pos/n
        (phat + z*z/(2*n) - z * Math.sqrt((phat*(1-phat)+z*z/(4*n))/n))/(1+z*z/n)
    end
    







<blockquote>
<strong>pos</strong> is the number of positive rating, <strong>n</strong> is the total number of ratings, and power refers to the statistical power: pick 0.10 to have a 95% chance that your lower bound is correct, 0.05 to have a 97.5% chance, etc.
</blockquote>





(other implementations in different languages were provided in [this Reddit thread](http://www.reddit.com/r/programming/comments/7ww4d/how_not_to_sort_by_average_rating/).)



I met Mike in person at the LA DevDays, where he presented on Python. He reminded me about this article, and we discussed whether it would work on Stack Overflow. I generally like it, but there are some important differences between Reddit and Stack Overflow:







  1. Statistically speaking, it is quite rare for us to get a question with more than 30 answers.

  2. Since votes are limited to 30 per user per day, we have a much lower volume of voting overall than Reddit.

  3. As downvotes cost reputation on Stack Overflow, the overall incidence of downvotes is probably much lower here than it is on Reddit, where downvoting costs nothing.

  4. By the time a question gets to more than 30 answers, and has tons of voting, it's arguably not a very appropriate question for Stack Overflow.

  5. I worry that a sort order where lower scoring items are ranking higher than higher scoring items will confuse users. Score has its problems, but it is immediately understandable -- low numbers are low, high numbers are high.




While this algorithm is definitely cool -- and a clear improvement for Reddit users -- I am not sure it's as clearly useful for Stack Overflow.

