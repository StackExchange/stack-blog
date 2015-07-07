---
author: jeffatwood
comments: true
date: 2009-07-14 10:03:17+00:00
layout: post
redirect_from: /2009/07/migrate-questions-between-websites
hero: 
slug: migrate-questions-between-websites
title: Migrate Questions Between Websites
wordpress_id: 1649
tags:
- company
- design
- serverfault.com
- superuser.com
---


First, I've got a little joke for you, [courtesy of Kip and TheTxi](http://meta.stackoverflow.com/questions/4012/is-the-down-voting-most-all-answers-that-arent-yours-pattern-considered-harm/4014#4014).





>
A doctor, a lawyer, and a rabbi log into Stack Overflow.

> 
> 
The bartender looks at them and says "sorry, you guys are not programming related."






I didn't say it was a _good_ joke. Moving on.



Now that we have threefour Stack Overflow websites in the [Stack Overflow trilogy](http://blog.stackoverflow.com/2009/05/the-stack-overflow-trilogy/) ...







  * [Stack Overflow](http://stackoverflow.com) (programming)

  * [Server Fault](http://serverfault.com) (system administration, servers, and IT pros)

  * [Super User](http://superuser.com) (general computer software/hardware)

  * [Meta Stack Overflow](http://meta.stackoverflow.com) (site and community bugs/features/discussion)




... it became increasingly clear that we needed **better ways to move questions amongst the sites**.



We already had a primitive version of this set up for migrating questions back and forth between Stack Overflow and Server Fault, but it was very limited, and forced all moved questions into Community Wiki mode.



We now have a **much more robust solution for migrating questions between any of the Stack Overflow "family" of websites**.



It works through the same question voting mechanism as before. If you think a question doesn't belong on the site, and you have the requisite 3,000 reputation to be able to [cast close votes](http://blog.stackoverflow.com/2009/05/linking-duplicate-questions/) -- then cast a "belongs on {other site}" vote:



![stack-overflow-close-belongs-on-vote](/images/wordpress/stack-overflow-close-belongs-on-vote.png)



Note that we now have a tooltip which describes in much more detail what each close reason (and family website) is for, if you're not clear.



This is still a vote-based process, unless a moderator intervenes. If the post reaches the close vote threshold (currently requires 5 close votes, with a majority of the belongs-on type), then it is migrated to the other website.



Let's look at a specific example of **migrating a question from Stack Overflow to Meta Stack Overflow**.  We'll start with the Stack Overflow side, where [this question](http://stackoverflow.com/questions/468303/are-taglines-signatures-disallowed-on-stackoverflow) originated.



![stack-overflow-close-migration-example-1](/images/wordpress/stack-overflow-close-migration-example-1.png)



On the Stack Overflow side, [this question](http://stackoverflow.com/questions/468303/are-taglines-signatures-disallowed-on-stackoverflow):







  * Is closed (so no more answers can be added)

  * Is locked (so it cannot be edited or voted on)

  * All its answers are soft-deleted

  * This info is logged in the post history, and on the post itself in a clickable footer.




Essentially, the question itself is left as a "stub" so interested parties can figure out what happened to it and where it went.



Now let's look at the destination side, in this case, Meta Stack Overflow.



![stack-overflow-close-migration-example-2](/images/wordpress/stack-overflow-close-migration-example-2.png)



All the original answers, comments, tags, and of course the question text itself, are preserved and [moved over wholesale to Meta Stack Overflow](http://meta.stackoverflow.com/questions/5029/are-taglines-signatures-disallowed-on-stackoverflow). 



Note that **all owners of questions, answers, and comments are automatically mapped to Meta Stack Overflow users whenever possible**. This is primarily driven by OpenID, and aided by our new [Cross-Site Account Association feature](http://blog.stackoverflow.com/2009/07/cross-site-account-associations/) in the case of Google's per-site hash OpenIDs. One extra cool new feature is that **ownership can be automatically re-associated** for users who don't happen to exist on the destination site at the time their question is migrated, but later decide to join and register.



We wanted to get this all rolled out and working in anticipation of the Super User beta -- now that there are several distinct communities for questions to live in, it's important that moving them around to where they belong is a relatively painless process.

