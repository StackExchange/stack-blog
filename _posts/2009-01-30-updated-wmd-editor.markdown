---
author: jeffatwood
comments: true
date: 2009-01-30 11:02:23+00:00
layout: post
redirect_from: /2009/01/updated-wmd-editor
hero: 
slug: updated-wmd-editor
title: Updated WMD Editor
wordpress_id: 580
tags:
- company
- design
---


Thanks to the [herculean efforts of several Stack Overflow users](http://blog.stackoverflow.com/2009/01/wmd-editor-reverse-engineered/), we were finally able to deliver some long-overdue bugfixes to our beloved WMD editor in early January, once it was fully reverse engineered.



(Sadly I still have yet to hear from the original WMD author, [John Fraser](http://attacklab.net/), after months of attempting to contact him in every possible way I know how, short of hiring a private detective. I seriously hope he's OK; it's mightily unusual in my experience for a programmer to drop off the internet so completely, and for so long.)



Since then, [Dana Robinson](http://stackoverflow.com/users/3161/dana) has been toiling away, removing cruft from the WMD editor and implementing my #1 feature request: [CSS sprite toolbar buttons](http://www.alistapart.com/articles/sprites/). This is a big deal because it reduces the number of HTTP requests necessary to render the WMD editor from about 14..



![wmd-toolbar-http-request-count-before](/images/wordpress/wmd-toolbar-http-request-count-before.png)



To **one!**



![wmd-buttons-sprites-large](/images/wordpress/wmd-buttons-sprites-large.png)



This one change **speeds up almost every single page we serve up!** We allow and encourage low-friction anonymous participation on Stack Overflow, so the WMD editor is always right there, inviting awesome (and not-so-awesome) new answers, at the bottom of every question page. All 80,000+ of them! I've already noticed the site is much, _much_ snappier with this new revision of the WMD editor deployed.



If you're interested in spriting some of your web UI, there's an [updated, more modern article on CSS sprites that demonstrates how to do it using JQuery](http://www.alistapart.com/articles/sprites2). Spriting your whole UI would probably be overkill, but it's a big win in the right scenario, like this one.



But CSS spriting isn't the only improvement Dana delivered:







  * Slimmed down some polling loops for better performance

  * Added additional CSS DOM caching to reduce unnecessary DOM traversals

  * Removed extraneous code to reduce download size




You can [pull the changes from the repository](http://code.google.com/p/wmd-new/) if you'd like to take a look.



As I've mentioned before, Dana is a big fan of the [Fake Plastic Rock](http://www.fakeplasticrock.com/) much like myself. As a reward for the tremendous amount of work Dana put into this, I was more than happy to hook him up with a set of [Rock Band 2 wireless drums](http://www.amazon.com/gp/search?ie=UTF8&keywords=rock%20band%202%20drums&tag=codinghorror-20&index=videogames&linkCode=ur2&camp=1789&creative=9325) and [Triple Cymbal kit](http://www.amazon.com/dp/B001G57Y02/?tag=codinghorror-20). Pretty soon, he'll be rocking out like this:










The code is fairly maintainable at this point, so hopefully we can be much more responsive to any editor issues from now on. The next phase is to create a **JQuery-ized version of WMD**, to reduce its size and enhance its browser compatibility even further.

