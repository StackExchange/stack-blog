---
author: jeffatwood
comments: true
date: 2011-08-09 09:24:21+00:00
layout: post
redirect_from: /2011/08/improved-tagging
hero: 
slug: improved-tagging
title: Improved Tagging
wordpress_id: 9213
tags:
- company
- community
- design
- stackexchange
---

Every Stack Exchange question is required to have at least one tag; tags are how we group, order, and find questions. But how do you determine which tags are correct for your question?

When you start typing in the tags field we display a simple list of existing tags that match what you've typed so far, ordered by frequency. 

![](/images/wordpress/old-tag-completer.png)

Simple indeed. No explanation, just … `activerecord (485)`. 

It became increasingly clear to us that were doing a poor job of educating users about not just _which_ tags to use on a question, but also _when_ to use them. And I believe our old tag completer was a big reason why.

That's why we went back to the drawing board and built a bigger, better, badder tag completer. One that not only uses a consistent visual tag style throughout, but crucially **includes the tag wiki excerpt along with the tag!**

![](/images/wordpress/new-tag-completion-updated.png)

It'll also assist when you're asking a question on a meta, by helpfully displaying the required tags on a meta question as soon as you enter the tag field.

![](/images/wordpress/new-tag-completer-meta.png)

It handles synonyms much more elegantly, too.

We're proud of the work the community has put into [their tag wikis](http://blog.stackoverflow.com/2010/08/tag-folksonomy-and-tag-synonyms/), and it's our hope that the new tag completer will better surface all these fantastic tag wikis to help educate users about what the tags mean, and most importantly, _when they should be used_. A question with correct, accurate tags is a lot more likely to get a good answer.

For this to work, you do need good tag wiki excerpts in place. Fortunately, we made it easy to edit a bunch of tag wikis at once on the [redesigned tags page](http://blog.stackoverflow.com/2011/03/redesigned-tags-page/) -- and here's our advice on how to write smart, effective tag wiki excerpts:





  1. **The excerpt is the elevator pitch for the tag.** You only have ~500 plain text characters for the excerpt, so don't feel obligated to cover everything in it! Save that for the 30,000+ character Markdown tag wiki. The excerpt should define the shared quality of questions containing this tag -- boiled down to a few short sentences.

  2. **Avoid generically defining the concept behind a tag, unless it is highly specialized.** The "email" tag, for example, does _not_ need to explain what email is. I think we can safely assume most internet users know what email is; there's no value in a boilerplate explanation of email to anyone.

  3. **Concentrate on what a tag means to _your_ community.** For "email" on Server Fault, mention the server aspects of email including POP3, SMTP, IMAP, and server software. For "email" on Super User, mention desktop email clients and explicitly exclude webmail, as that would be more appropriate for [webapps.stackexchange.com](http://webapps.stackexchange.com).

  4. **Provide basic guidance on when to use the tag**. In other words, _what kinds of questions should have this tag?_ Tags only exist as ways of organizing questions, so if we don't provide proper guidance on which questions _need_ this tag, they won't get tagged at all, rendering the tag excerpt moot. Think of it as a sales pitch: in a room full of tags screaming "pick me!", what would convince a question asker to select your tag?

  5. **Some tags are common knowledge**. Most tags require a bit of explanation in the excerpt, even if it's only 3 or 4 words. But if the tag is common knowledge -- that is, if you _walked up to any random person on the street and said the tag word to them_, and they would know what you were talking about -- then don't bother explaining the tag at all. Stick to usage of the tag within your community in the excerpt.


Even if you have good tag wikis already, it's healthy for communities to introspect a bit about their use of tags, and what those tags _mean_. Periodically asking questions like "who would ever subscribe to this tag, and why?" can reveal a lot about the nature of tagging on your site.
