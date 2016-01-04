---
author: jeffatwood
comments: true
date: 2010-08-01 08:32:05+00:00
layout: post
redirect_from: /2010/08/tag-folksonomy-and-tag-synonyms
hero: 
slug: tag-folksonomy-and-tag-synonyms
title: Tag Folksonomy and Tag Synonyms
wordpress_id: 4361
tags:
- company
- community
- design
---

Every question on Stack Overflow, or any other Stack Exchange site, **must be tagged with at least one tag**. Tags are simple keywords or labels that help categorize your question with other, similar questions. 

![](/images/wordpress/stack-tags.png)

It's important that questions get tagged correctly, because that makes it easier for everyone to find the questions they're interested in -- and potentially answer them.

These tags are built by the community, in what is commonly known as a [folksonomy](http://en.wikipedia.org/wiki/Folksonomy). While we do a bit of pre-seeding when sites launch with a few dozen really _obvious_ tags, most tags you see were created by another fellow user. Like any other collaborative process involving the community, not everyone agrees, and it takes some time to reach a consensus. One person's to-mah-to is another person's to-may-to, and pretty soon [everyone is calling the whole thing off](http://www.youtube.com/watch?v=J2oEmPP5dTM).

**As Stack Overflow has grown, so has the need for discipline around tagging.** We added tag merging about a year ago, but it was purely a moderator function. We've also slowly but surely been increasing the reputation required to create a new tag from 250 reputation, to 500 reputation, all the way to the current setting of 1500 reputation. We've also started [automatically culling single-use tags that are more than 6 months old](http://meta.stackoverflow.com/questions/48417/should-we-zap-the-low-occurrence-tags/48418#48418). But that's just a band-aid on the underlying problem. It's been clear for a very long time now that [we needed some kind of tag synonym system](http://meta.stackoverflow.com/questions/2779/could-the-tagging-system-be-enhanced-to-support-tag-synonyms), one that the community itself could maintain and control without having to bend the ear of a moderator.

[Sam's](http://blog.stackoverflow.com/2010/06/welcome-stack-overflow-valued-associate-00008/) been working hard on this for the last two weeks, and we now have a fairly reasonable approximation of a community driven tag synonym system in place. Just check **the info tab on any tag** -- like, say, the [JavaScript tag](http://stackoverflow.com/questions/tagged?sort=info&tagnames=javascript).

[![](https://i.stack.imgur.com/l1b8N.png)](http://stackoverflow.com/questions/tagged?sort=info&tagnames=javascript)

On the info tab, you'll find two sections of information about the javascript tag: an editable **user-contributed wiki** at the top, and a list of **tag synonyms** at the bottom.

[![](https://i.stack.imgur.com/d3E0E.png)](http://stackoverflow.com/questions/tagged?sort=info&tagnames=javascript)

As you can see, our fellow users have already contributed a nice little wiki for the [javascript] tag already. Be advised that the Tag Wiki is a somewhat experimental feature at the moment. The intention is explained in the default help text on any blank tag wiki:



> Tag wikis help introduce newcomers to the tag. They contain frequently asked questions about the tag and guidelines on its usage.

> Tag wikis can be edited by users with more than 2000 reputation, provided:

>   * They are in the top 20 answerers for this tag or

>   * They have more than 100 answer upvotes in this tag



 
As for synonyms, the javascript tag has two so far. This means that **any question tagged [js] or [java-script] will be automatically and silently remapped to [javascript] behind the scenes.** This is the key quality of life improvement, because it means that new users can no longer accidentally pollute the tag pool by adding or contributing to yet another oddball variant of an existing tag. Again. And Again. And Again...

With the help of Stack Overflow moderator [Bill the Lizard](http://stackoverflow.com/users/1288/bill-the-lizard), we've imported most of the [common community generated synonyms](http://meta.stackoverflow.com/questions/50088/official-repository-of-tag-synonyms) into the Stack Overflow synonym list already. For new synonyms, we will require that **any proposed tag synonym must already exist as a tag on at least one question in the system**, otherwise we'll go crazy trying to predict every possible synonym of every possible tag. Instead, observe what real live users actually create, then base your synonyms on _that_.

If you click the **[see all tag synonyms »](http://stackoverflow.com/tags/synonyms)** link from any specific tag page, you can browse all current and suggested tag synonyms, across _all_ tags. If you're a moderator, you should have this page bookmarked. 

[![](https://i.stack.imgur.com/H680N.png)](http://stackoverflow.com/tags/synonyms)

It is our hope that these tag synonym pages are fairly self-explanatory, at least to the higher reputation users that they are designed for. And if not, we'd like to make it so.

If you'd like to help tame the tag folksonomy with us:





  * browse the **info tab** for tags you actively participate in

  * **edit** the tag wikis to make them better

  * **vote** for the tag synonyms you think should (and _shouldn't_ exist)

  * **suggest** new tag synonyms we might need

  * **monitor** the [master tag synonym page](http://stackoverflow.com/tags/synonyms) and see which ones are working, and which ones aren't.


Good luck, and happy tagging!
