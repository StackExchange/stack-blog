---
author: jeffatwood
comments: true
date: 2008-10-17 17:46:07+00:00
layout: post
redirect_from: /2008/10/stack-overflow-search-now-51-less-crappy
hero: 
slug: stack-overflow-search-now-51-less-crappy
title: Stack Overflow Search - Now 51% Less Crappy
wordpress_id: 129
tags:
- company
- design
---


Believe it or not, the search function on Stack Overflow may just actually.. work.. now.



I started to feel really bad when I'd see people post duplicate questions, even after they said they "searched first". Now, to be clear, we do a **fuzzy title-based search** when you tab off the title field on the Ask page:



![stackoverflow-ask-title-related](/images/wordpress/stackoverflow-ask-title-related.png)



This works reasonably well, but it's limited to questions that have similar titles. It's entirely possible to ask the same exact question using completely different words in the title. In fact, I've found that people have an almost _uncanny_ ability to ask questions using completely different words. 



There may be other ways we enhance the ask page in the future to better show relevant questions as you type, beyond the title matching. Why ask when the question you were going to ask has already been asked .. and maybe even answered?



But for now my goal was to **enhance the search page**, which has languished over the last month. Search _worked_, and by that I mean with sufficient effort you could find an _exact_ match to question or answer with specific, unique words that you knew existed in the post. But as far as Google-style "type in some random words and get exactly what you are looking for", it was a definite bust.



I made a special effort to improve the "no search results found" page. It shows a number of easy ways to immediately improve your search results based on my experience searching for stuff on SO:



![stackoverflow-enhanced-search-no-matches](/images/wordpress/stackoverflow-enhanced-search-no-matches.png)



Of course, there's always Google. As you can see, we pre-emptively build a Google search link for you at the bottom of this page. You can **always search Stack Overflow through good old reliable Google**. Constructing a Google search for Stack Overflow manually is easy; just add the `site:stackoverflow.com/questions` command to the beginning of your search to scope it to SO questions, then plug in as many search terms as you want after that. Like so:



[http://www.google.com/search?q=site:stackoverflow.com/questions i dont know how to search vary good](http://www.google.com/search?q=site:stackoverflow.com/questions+i+dont+know+how+to+search+vary+good)



That said, there are things our search can do better than Google. In particular, I'd urge you to take the advice to **search within tags** to heart. Google kind of sucks at this; you will generally get much better results if you scope your search to one or more likely tags such as `[ruby]` or `[perl]`. Just add the tags in brackets to your regular search terms, in any order, as many as you like (note that you cannot yet specify negation for tags in search).



![stackoverflow-search-with-tags](/images/wordpress/stackoverflow-search-with-tags.png)



I also found that a lot of users were inexplicably searching for things like "c#" and "c++". If we see you enter a single search term that happens to map to a (reasonably) popular tag, **we will assume you wanted that tag** and whisk you away to all questions in the tag, instead. There's just no way a general search for the string "c++" is ever going to produce good results, anyhow, so this felt like a no-brainer to me.



Beyond that, we have **rolled up search results so only questions are returned.** Yes, you can absolutely find text in answers, but the displayed result will be a link to _the single question that contained the answer_ instead of five individual search results for the five answers that happened to match. I know, there's no real excuse for the insane previous behavior. Like I said, we just didn't have time to give it the attention it deserved.



Also, we do a **better job of searching for titles**, something else that barely worked before. You should be able to search for the exact title of a question and get it in the first page of results, if not at the very top. That's, like, searching 101. As of today, we do a better job of discarding stopwords, so you can **almost always find a post by searching for its exact title**. Even without quotes, although adding quotes will give you a practically guaranteed match.



We'll continue to improve search (some other things I want to add are search for all posts by a particular user, by certain dates, etcetera), but hopefully this upgrade makes search worth using again.



Or at least 51% less crappy.

