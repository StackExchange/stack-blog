---
author: jeffatwood
comments: true
date: 2009-05-07 12:05:42+00:00
layout: post
redirect_from: /2009/05/interesting-and-ignored-tags-now-support-wildcards
hero: 
slug: interesting-and-ignored-tags-now-support-wildcards
title: Interesting and Ignored Tags Now Support Wildcards
wordpress_id: 1225
tags:
- company
- community
- design
---


Today's new feature will be useful for those of you who happen to have a lot of [ignored and/or interesting tags](http://blog.stackoverflow.com/2008/10/expressing-your-tag-preferences/). You can now **use the asterisk to set up wildcard matches**, rather than having to laboriously construct a list of every single tag as before.



![stackoverflow-ignored-interesting-wildcards](/images/wordpress/stackoverflow-ignored-interesting-wildcards.png)



This was a [fairly highly voted request on UserVoice](http://stackoverflow.uservoice.com/pages/1722-general/suggestions/38257-allow-for-wildcards-in-ignored-and-interesting-tags), too.



Simply specify **one or more asterisks** to match any number of characters, either in the middle, the beginning, or the end of a tag. So all these should work as you might expect:




    
    
    *.net*
    jquery*
    *c++
    





While building this, we realized it would be super-duper mega convenient if we could **use a regular expression as a JQuery selector**. We did a quick web search and ended up on this [Stack Overflow question](http://stackoverflow.com/questions/190253/jquery-selector-regular-expressions), which was, ironically enough, the top Google search result for our search terms. Not the first time this has happened to us, but still pretty cool. We built a thing that .. _helps us build the thing._



Unfortunately, the solution proposed there, [JQuery filters](http://docs.jquery.com/Traversing/filter#expr), while cool and useful, wasn't a good fit for our code. So we did some more searching and discovered James Padolsey's most excellent [Regex Selector for jQuery](http://james.padolsey.com/javascript/regex-selector-for-jquery/). While there, we noticed that James links to Stack Overflow on his blog under the "Got a problem?" section, and the front page of his blog features _another_ Stack Overflow question.





<blockquote>
A recent question on Stack Overflow posed a common question concerning DOM insertion and specifically the dire performance of IE6 when using innerHTML to parse a large amount of HTML markup. <a href="http://stackoverflow.com/questions/788614/ways-to-increase-performance-when-set-big-value-to-innerhtml">Head over there</a> to read the question for yourself. I thought it worth sharing my solution;
</blockquote>





So, naturally, we edited the accepted answer (no offense, Xenph, but the whole "see official documentation" wasn't a great answer) to include a reference to James' regex selection filter which we felt best answered the original asker's question.



Thus, in a beautiful kind of synchronicity, **we used Stack Overflow to build Stack Overflow**, while simultaneously constructing a web of improved links for future programmers to help find their way.



I don't know why, but I personally find that immensely gratifying.



Oh yes, and enjoy the new wildcard tag matching feature.

