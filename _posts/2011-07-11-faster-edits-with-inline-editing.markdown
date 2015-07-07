---
author: jeffatwood
comments: true
date: 2011-07-11 08:55:43+00:00
layout: post
redirect_from: /2011/07/faster-edits-with-inline-editing
hero: 
slug: faster-edits-with-inline-editing
title: Faster Edits with Inline Editing
wordpress_id: 8702
tags:
- company
- community
- design
- stackexchange
---

Every Stack Exchange question and answer pair is intended to be an [evergreen, editable resource for future travelers](http://blog.stackoverflow.com/2011/01/the-wikipedia-of-long-tail-programming-questions/):



>
The editing feature is there so that old question/answer pairs can get better and better. For every person who asks a question and gets an answer on Stack Exchange, hundreds or thousands of people will come read that conversation later. Even if the original asker got a decent answer and moved on, the question lives on and may continue to be useful for decades.

>
This is fundamentally different from Usenet or any of the web-based forums. It means that Stack Exchange is not just a historical record of questions and answers. It's a lot more than that: it's actually a community-edited wiki of narrow, "long-tail" questions -- questions that aren’t quite important enough to deserve a page on Wikipedia, but which come up over and over again.



**Editing is what you might call a [family value](http://blog.stackoverflow.com/2009/04/in-defense-of-editing/) on our network.** All the content you generously contribute to any [Stack Exchange site](http://stackexchange.com/sites) is licensed to us, you, and the rest of the world [under Creative Commons](http://blog.stackoverflow.com/2009/06/stack-overflow-creative-commons-data-dump/) with the explicit promise that future visitors can help us improve it and keep it up to date -- largely through editing.

To get an idea of just how much editing goes on, here's a snapshot of edits performed on Stack Overflow between February 1, 2011 and July 8, 2011:

![](/images/wordpress/regular-edits-stack-overflow-feb-july-2011.png)

One of the primary ways we try to encourage editing is by **making it easier to edit**:





  * We added [inline tagging](http://blog.stackoverflow.com/2010/04/new-10k-feature-inline-tagging/) in April 2010, which made it much faster for high reputation users to retag questions.


  * We added [suggested edits](http://blog.stackoverflow.com/2011/02/suggested-edits-and-edit-review/) in February 2011, which opened up the world of edits to anonymous users and users with 2,000 or less reputation.



How much of the editing total do anonymous and regular users contribute? Here's a snapshot of suggested edits performed on Stack Overflow for the same time period; the green line is registered users, and the blue line is anonymous users.

![](/images/wordpress/suggested-edits-stack-overflow-feb-july-2011.png)

So, about **one quarter** of all edits are suggestions from anonymous and regular users. Only a tiny trickle are from anonymous users, on the order of 10 to 30 per day. (If you're wondering why anonymous edits doubled in June, we made a copy change on the site that helped. Try browsing the site in incognito / inprivate / private browsing mode and see if you can tell what it is.)

We think the current level of editing is admirable -- and climbing -- but we are deeply concerned that there's not nearly enough editing to keep up with the corpus of almost 2 million questions on Stack Overflow. The English Wikipedia currently has [about 3.6 million articles](http://meta.wikimedia.org/wiki/List_of_Wikipedias#All_Wikipedias_ordered_by_number_of_articles), so **if you think of every Stack Overflow question as a potentially editable article, we _already_ have more than half the footprint of Wikipedia to maintain and keep up to date**. A scary thought as Stack Overflow nears its [third birthday](http://blog.stackoverflow.com/2009/08/one-year-of-stack-overflow/).

To address this concern, we relied on another of our core family values: [performance is a feature](http://www.codinghorror.com/blog/2011/06/performance-is-a-feature.html). That is, if you want more editing … _make editing faster!_

That's why I'm pleased to announce that **we now support inline editing on all Stack Exchange sites**. There's no longer any need to visit a separate editing page; simply click "edit" and begin editing the post _right there on the question page_.

![](/images/wordpress/stack-exchange-inline-editing.gif)

This is a much faster method of editing, as the above animation demonstrates. (And for optimal speed, remember to press tab, tab, space to save your edit -- we even built in a little ctrl+enter shortcut to jump right to saving the edit.)

We've only opened up inline editing to editors (users with 2,000+ reputation) for now, but we might extend it to all users eventually. And if you prefer the old editing page for whatever reason, just hold down ctrl when clicking on edit to get it.

What’s so special about editing? You might as well ask what’s so special about editing on Wikipedia? Uh... _everything?_ So go forth, [be bold](http://en.wikipedia.org/wiki/Wikipedia:Be_bold), and **exercise your new, faster inline editing skills!**
