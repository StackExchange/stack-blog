---
author: jeffatwood
comments: true
date: 2008-10-13 03:59:56+00:00
layout: post
slug: tags-and-tags-or-tags
title: Tags AND Tags OR Tags
wordpress_id: 119
categories:
- company
- design
---


Until recently, **we hadn't done a good job of providing a user interface for combining tags**. You'll notice that all the question browsers now show "related tags", with a count of how many tags are shown for whatever view you happen to be in (with the exception of search):



![stackoverflow-related-tags](http://blog.stackoverflow.com/wp-content/uploads/stackoverflow-related-tags1.png)



Let's say I clicked on the [Python](http://stackoverflow.com/questions/tagged/python) tag, anywhere on the Stack Overflow site. **Clicking on a tag zips you away to a view of all the questions within that particular tag.** Within the tag view, you can sort and browse as expected, but you can also click the related tags in the right sidebar to _combine_ tags, like so:



![stackoverflow-tagged-related-series](http://blog.stackoverflow.com/wp-content/uploads/stackoverflow-tagged-related-series.png)



This isn't exactly new; you could always do this manually in the URL by space delimiting the tags. However, these were always implicit **ands**, as in:





<blockquote>
Show me all the questions tagged _both_ "python" **AND** "django"

> 
> 
[http://stackoverflow.com/questions/tagged/python django](http://stackoverflow.com/questions/tagged/python django)
</blockquote>





We also support a slightly shorter synonym of this URL that does the same thing:



[http://stackoverflow.com/tags/python django](http://stackoverflow.com/tags/python django)



But maybe that's too specific for your tastes. Now you use **the new or pseudo tag**:





<blockquote>
Show me all the questions tagged _either_ "python" **OR** "django"

> 
> 
[http://stackoverflow.com/questions/tagged/python or django](http://stackoverflow.com/questions/tagged/python or django)
</blockquote>





![stackoverflow-tagged-or-clause](http://blog.stackoverflow.com/wp-content/uploads/stackoverflow-tagged-or-clause1.png)



We also support **NOT** if you prefix the tag with a dash, like so:





<blockquote>
Show me all the questions tagged "python" **BUT NOT** tagged "django"

> 
> 
[http://stackoverflow.com/questions/tagged/python -django](http://stackoverflow.com/questions/tagged/python -django)
</blockquote>





![stackoverflow-tagged-not-clause](http://blog.stackoverflow.com/wp-content/uploads/stackoverflow-tagged-not-clause.png)



This works throughout the site, including questions, unanswered questions, and all tag based RSS feeds. **Anywhere on Stack Overflow you can specify a tag, you now specify multiple tags with or without the or clause.**



I'm not sure if that's super _or_ awesome. I haven't decided yet.



But either way, it was definitely a highly ranked request from a lot of users.

