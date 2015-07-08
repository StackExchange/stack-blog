---
author: jeffatwood
comments: true
date: 2010-06-10 06:59:48+00:00
layout: post
redirect_from: /2010/06/improved-question-merging
hero: 
slug: improved-question-merging
title: Improved Question Merging
wordpress_id: 3534
tags:
- company
- community
- design
---


The ability to cast a question deletion vote against a closed question is earned at 10,000 reputation. It was always _intended_ as a tool for getting rid of useless, bottom-of-the barrel type closed question content. But lately we've had to deal with a [rash of question deletions](http://meta.stackoverflow.com/questions/50069/why-are-we-deleting-instead-of-merging), some of which I felt [destroyed useful answers](http://meta.stackoverflow.com/questions/51097/the-great-question-deletion-audit-of-2010). To address this issue, we instituted [scaled deletion votes](http://meta.stackoverflow.com/questions/50523/should-delete-votes-be-limited-like-close-votes). Question deletion still requires at minimum 3 votes from 10k rep users to achieve a delete (or undelete) -- but the more votes a question and its answer have, the more delete votes required to delete it. This is really more of a safety measure than a complete solution, though.



As usual, _I blame myself_\*, but my original advice stands: **if there's anything of worth in the answers, the question should be merged with another question rather than being deleted!** (and if there's nothing of worth in the question or answers, pull the deletion trigger with my blessing. Heck, while you're at it, give it a double-tap to make sure it stays down.) But our old merge process was kind of, er, broken. Our old merge …

  * _destroyed_ one of the questions

  * left no trace of the old question, leaving users scratching their heads and wondering "what happened to my/this question?"

  * left almost no visible trace of the merge in the revision history of the surviving question




I guess [I picked the wrong day to stop sniffing glue](http://www.youtube.com/watch?v=v46plhmxXU4) when I came up with that merge implementation.



But no more! Our kinder, gentler question merge has none of these problems! It behaves much more like a typical duplicate close, with the exception that the answers are migrated to the target question.



Let's try an example. These two questions are fairly similar, so I'll merge them on our development tier:


  1. [Regular expression to find URLs not inside a hyperlink](http://stackoverflow.com/questions/1315653/regular-expression-to-find-urls-not-inside-a-hyperlink)

  2. [How to wrap text in a hyperlink ONLY if it isn’t already wrapped in a hyperlink](http://stackoverflow.com/questions/1191637/how-to-wrap-text-in-a-hyperlink-only-if-it-isnt-already-wrapped-in-a-hyperlink)




_disclaimer: I am not actually proposing these two particular questions get merged, I just needed a plausible looking example to illustrate this blog post!_



If you believe these should be merged, [flag them for moderator attention](http://blog.stackoverflow.com/2009/04/raising-a-red-flag/) and indicate what you believe the merge target should be. (Yes, merging is still a moderator only function at the moment.) If the moderator agrees, the merge will happen. In this case, I felt #1 had the stronger title, so I did the merge in that direction. 



[![](/images/wordpress/question-merge-example-small.png)](/images/wordpress/question-merge-example.png)



The source merge question isn't deleted, yet; once its answers have been merged into the target, it's left around as a stub for people to find -- with a little signpost directing them to the merge target:

> 
> ## merged by Jeff Atwood ♦ 8 secs ago
> 
> 

> 
> this question was merged with [Regular expression to find URLs not inside a hyperlink](http://stackoverflow.com/questions/1315653/regular-expression-to-find-urls-not-inside-a-hyperlink) because it is an exact duplicate of that question.


We also record detailed migration records in the revision history of both questions and the migrated answers, so you can always get an audit trail of what happened, and the process is theoretically reversible. (Except for comments on the source question, which are unavoidably de-parented as they are migrated to the target question.)



Now, if the merge source question _is_ eventually deleted, we can handle that, too -- we do **an automatic 301 redirect to the merge target**.



I'm not necessarily advocating deletion, either; [we _want_ some of these merge stub questions hanging around](http://blog.stackoverflow.com/2009/04/handling-duplicate-questions/) so people can find two "identical" questions that were asked in two totally different ways. The _exact, perfect_ duplicate question, in my experience, is much more rare than people think.



Anyway, now that we finally have **a much saner question merge process**, I urge you 10k users to take your collective itchy fingers off those deletion triggers and consider -- _should this question be merged, instead?_



\* <sub>somehow we forgot to limit the # of delete votes 10k users could cast every day, which was a disaster waiting to happen. Almost every other vote type is rate limited, and [for good reason](http://www.codinghorror.com/blog/2009/02/rate-limiting-and-velocity-checking.html).</sub>
