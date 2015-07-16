---
author: jeffatwood
comments: true
date: 2009-07-29 06:59:11+00:00
layout: post
redirect_from: /2009/07/stack-overflow-search-now-61-less-crappy
slug: stack-overflow-search-now-61-less-crappy
title: Stack Overflow Search - Now 61% Less Crappy
wordpress_id: 1719
tags:
- company
- design
- community
---


Remember when [We Made Search 51% Less Crappy?](http://blog.stackoverflow.com/2008/10/stack-overflow-search-now-51-less-crappy/)



Well, we rolled up our sleeves and increased search quality a whole ten percent to 61%. How?





<ol>
  <li>
    Search now <strong><em>heavily</em> weights title</strong> in the results, since people seemed to really like that approach. This is currently used on the /ask page, which does a title-exclusive search when you tab away (onblur) the title field.
  </li>
  <li>
    <p>Any individual search terms which map directly to the top 40 tags will be <strong>auto-converted to tag searches</strong>. So if you enter</p>

    <p>c++ entities</p>

    <p>it will convert to</p>

    <p>[c++] entities</p>

    <p>automagically on your behalf.</p>
  </li>
</ol>




This alone is a rather substantial improvement. One specific query,  cited as an example of how bad the old search was, is to search for "what is a Monad":



[http://stackoverflow.com/search?q=what+is+a+monad](http://stackoverflow.com/search?q=what+is+a+monad)



As you can see, pretty solid results now.



(And don't forget to avail yourself of the **Votes sort tab** on the search results page. It defaults to relevance but sometimes votes is a better default sort IMO. There were users who almost literally fought me to the death on the choice of this default search results sort order in the Stack Overflow beta, so that's how it is.)



I've also started implementing some BETA advanced search operators, [as requested on meta](http://meta.stackoverflow.com/questions/1114/additional-search-features-syntax). 



The current advanced search operators are:



<table cellpadding="5" width="600" id="advanced-search" >
    <tr >

    
<td >posts from a specific user
</td>
    
<td >user:1234 apples oranges
</td>
    </tr>    
    <tr >
    
<td >questions with a minimum number of votes
</td>
    
<td >votes:15 apples oranges
</td>

    </tr>
    <tr >
    
<td >questions that have an accepted answer
</td>
    
<td >hasaccepted:1 apples oranges
</td>
    </tr>
    <tr >
    
<td >questions that have no answers
</td>

    
<td >answers:0 apples oranges
</td>
    </tr>
    <tr >
    
<td >questions that have been closed
</td>
    
<td >closed:1 apples oranges
</td>

    </tr>
    <tr >
    
<td >questions that are community wiki
</td>
    
<td >wiki:1 apples oranges
</td>
    </tr>
    </table>



Yes, these are a little buggy at the moment, but they mostly work. And they can be combined with [tags] and search terms of course. 



One thing to bear in mind: the advanced search operators will **sometimes kick you into a combined questions and answers search result format**. So don't be alarmed, when you decide to browse all posts by Jon Skeet voted up 20 or more times, that you see a mixture of questions and answers in your search results!



All of the above is documented on our new search help page:



[http://stackoverflow.com/search](http://stackoverflow.com/search)



Feel free to file bugs/feedback on this on meta, and _please_ tag them with [advanced-search] if you're talking about a search qualifier with a colon in it.

