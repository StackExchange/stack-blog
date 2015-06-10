---
author: jeffatwood
comments: true
date: 2010-01-16 15:24:06+00:00
layout: post
redirect_from: /2010/01/new-improved-comments-with-reply
hero: 
slug: new-improved-comments-with-reply
title: New, Improved Comments with @reply
wordpress_id: 2578
tags:
- company
- community
- design
---


Stack Overflow didn't always have post comments. The first comment ever was on [this post by Michael Stum](http://stackoverflow.com/questions/35301/what-is-the-diffference-between-the-and-or-operators/35314#35314), and it was posted on September 6th, 2008. There have been continuous improvements to comments since they were originally rolled out:




  * [Comments: Flags and votes](http://blog.stackoverflow.com/2009/04/comments-now-with-flags-and-votes/)

  * [Comments: Top n shown](http://blog.stackoverflow.com/2009/04/comments-top-n-shown/)

  * [Comments: question owner is highlighted](http://blog.stackoverflow.com/2009/08/new-question-asker-features/)




On top of that, the limitation on comment length was relaxed from the original 300 characters to 600 characters. There have been three additional improvements to comments recently, all by popular demand. 





## Comment Formatting





Hopefully you're familiar with Markdown by now; it's [the formatting language we use for posts on Stack Overflow](http://stackoverflow.com/editing-help). Well, all that learnination has paid off: now you can **use a subset of Markdown in your comments for bold, italic, and code**. 




    
    
    *italic* _italic_
    **bold** __bold__
    `code`
    \*not italic\*
    [link text](http://example.com "link title")
    





Like so:



![](/images/wordpress/comments-mini-markdown.png)



The support of a minimal subset of Markdown in comments isn't new, it's been in for several months -- but I wanted to make sure everyone was aware of it.





## Comment Editing





As frequently requested, **we now allow editing of your comments** for a 5 minute grace period after they are posted. Just mouse over your comment and look for the "edit" link.



![](/images/wordpress/comment-editing.png)



A comment that has been edited will have a small pencil icon indicator; the tooltip explains what it means, and also tells you how many times the comment was edited. Once that 5 minute editing grace period is over, the comment is "locked in" and cannot be edited. If you want to change it after that, it must be deleted and resubmitted as a new comment.





## Comment @username Notifications





Normally, you only get notified of comments when you own the post that is being commented on. But now **you will also get notified of any comments that refer to you by @username**, even if you don't own the underlying post. This implementation is inspired by the way Twitter handles @username mentions -- although we have the additional rather severe restriction that in our system, user names are not guaranteed to be unique.



![](/images/wordpress/comments-replies-formatting.png)



In the above example, [Anthony Jones](http://stackoverflow.com/users/17516/anthonywjones) will get notified that [Bruno Conde](http://stackoverflow.com/users/31136/bruno-conde) has replied to his comment. (writing out the entire username wasn't entirely required, as will be explained shortly)



There are some rules, of course:







  1. This only works when referring to other people who have already commented (or have edited the post).

  2. **Your comment must include @username that you are referring to**, where "username" is a reasonable match to the user's current display name (as seen in the comments above yours).

  3. There must be a starts-with, case insensitive match of at least THREE characters to the displayname. So @a and @ab will never match anyone or anything. 

  4. Spaces are ignored in the match, so if the person's display name is "Peter Smith" then just use @peter to match, or @petersmith.

  5. Matching is performed in reverse chronological order, so if there are five people named "John" in the comments, writing "hey @john, have you considered apples?" will match the _most recent_ John to comment.

  6. Only one person can be replied to at a time in a comment. The first one in the string wins.

  7. Users who have no display name set, whose faux-displayname is derived from their OpenID URL, cannot be matched.




Question and answer owners were always notified when there were new comments on their posts, so there's no need to address the post owner by @name when commenting. Remember, the intent of this feature is to **let _other users participating in the comments_ know that you've replied to them**. 



Now, we don't want Stack Overflow to turn into a social networking site for chatty cathys, so there's only so far we will go in supporting pure conversation. We may be tweaking the behavior a bit over the next day or two, but but this seems like a reasonable compromise.

