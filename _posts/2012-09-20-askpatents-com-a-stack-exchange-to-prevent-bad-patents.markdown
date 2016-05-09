---
author: spolsky
comments: true
date: 2012-09-20 14:07:33+00:00
layout: post
redirect_from: /2012/09/askpatents-com-a-stack-exchange-to-prevent-bad-patents
hero: 
slug: askpatents-com-a-stack-exchange-to-prevent-bad-patents
title: 'AskPatents.com: A Stack Exchange To Prevent Bad Patents'
wordpress_id: 12251
tags:
- company
- announcement
- stackexchange
- community
---

We’ve all heard the [stories](http://www.thisamericanlife.org/radio-archives/episode/441/when-patents-attack/) of seemingly trivial patents being used to mug technology companies. There was the patent on the “Interactive Web” which a troll named Eolas used to extract $521 million from Microsoft--until a jury in East Texas [threw out the patents](http://www.wired.com/threatlevel/2012/02/interactive-web-patent/). There are the four patents Lodsys is using to send [threatening letters to software developers everywhere](http://www.applepatent.com/2011/05/lodsys-targets-small-ios-developers.html)--trivial patents that Google says [never should have been granted](http://www.groklaw.net/articlebasic.php?story=20110817200754569), in fact, Google and Oracle have submitted [mountains of prior art](http://www.groklaw.net/articlebasic.php?story=2012060618210330) to show that the patents should be invalid.

Many small app developers have just decided it’s cheaper to settle rather than spend half a million dollars in legal fees fighting in court.

What's going on here? And what can we do to stop it?

[![Yes, it's a patent for giant gummy bears](https://i.stack.imgur.com/xdYZe.png)](http://www.google.com/patents/US5338245)Anybody who follows patent applications closely and who understands technology may have noticed something odd about a lot of the new patents: they don't really seem like inventions. Really? They got a patent on _that_? I wrote that in eighth grade. In BASIC. On a TRS-80. Isn't a patent supposed to be an _invention_?

Yes. But the escalation of the patent wars has led companies to try to patent everything in sight, so they can build up a portfolio of patents ("to defend themselves," of course, so that they have something to countersue with when they get sued). The way they do this is by sending lawyers up and down the corridors where the engineers are working, looking for things that they might be able to patent. And the imperative to get a lot of patents means that sometimes they submit things which aren't exactly inventions _per se_ to the USPTO. Just in case they stick.

Now, the patent office works hard, but in order to determine if something is not an invention, they have to find [prior art](http://www.iusmentis.com/patents/priorart/).

Prior art could be another patent, something in a publication, or even an implementation, like a shareware software program from 1992 that does the same thing that somebody is now claiming to have invented in 2008. It can be published anywhere in the world, in any language, in any publication, no matter how obscure, to qualify as prior art.

And, as you might guess, in the 22.5 hours [[DOC](http://www.uspto.gov/about/vendor_info/current_acquisitions/pgshom_rfqsoo_v2.doc)] that examiners might have to review each patent application, searching every document published in the entire world in every language is not practical. There’s no possible way examiners can conduct a truly exhaustive search of prior art.

And that's how we get bad patents.

Luckily, we got two breaks.

The first break we got is a tiny provision in the [America Invents Act](http://judiciary.house.gov/issues/issues_patentreformact2011.html), the "Patent Reform Act" which, on the face of it, appears to have done absolutely nothing to solve this problem, but if you look closely, there's a tiny provision in there, which says:

"Any person at any time may cite to the Office in writing prior art consisting of patents or printed publications which that person believes to have a bearing on the patentability of any claim of a particular patent..."

In other words, as of September 16, the USPTO is required to accept submissions from the public of prior art.

The second lucky break is that we have a very good Director at the USPTO right now, [David Kappos](http://www.uspto.gov/about/bios/kapposbio.jsp). Mr. Kappos, who came from IBM, realized that this provision gave the public an opportunity to help patent examiners identify prior art. But it's not enough just to allow prior art submissions... you have to find a way to get the public involved in looking through patent applications and trying to find prior art that could prevent bogus claims.

And that sounds a lot like... a Stack Exchange!

We humbly submit that it's a testament to how good the Director of the USPTO is, that he actually came to us. We were not paying attention. He came--_twice!_--to the Stack Exchange office in New York City to encourage us to open a Stack Exchange site that would generate heaps of prior art to help the patent examiners do their jobs.

[![AskPatents Logo](https://i.stack.imgur.com/8JrWC.png)](http://askpatents.com/)[Ask Patents](http://askpatents.com/) is a new Stack Exchange site launching today that allows anyone to participate in the patent examination process. It’s a collaborative effort, supported by Stack Exchange, the US Patent and Trademark Office, and the Google Patent Search team. It's very exciting, because it is opening up a process that has been conducted behind closed doors for over 200 years.

Our hope is that [Ask Patents](http://askpatents.com/) will reduce the number of patents mistakenly granted for obvious, unoriginal non-inventions, especially around software, a field that is near and dear to us.

Ask Patents is a collaborative effort, neatly tagged by keywords and classification, and searchable by patent application number. It is inspired by a research project called [Peer To Patent](http://peertopatent.org/), run out of New York Law School. That pilot project, created by [Professor Beth Noveck](http://www.nyls.edu/faculty/faculty_profiles/beth_simone_noveck), proved [very successful](http://peertopatent.tumblr.com/post/25179026948/final-results-for-pilot-one) at identifying prior art that the USPTO wouldn’t otherwise have known about.

Citizen volunteers and other interested parties will be able to ask about applications that they think are suspicious. Others can answer, identifying possible prior art, and using our upvote/downvote feature to rate any examples of prior art that other people found.

The USPTO, complying with the new law, will also provide an online system for submitting prior art. We’re also integrating with Google Patent Search, so every patent application on Google will include a link to discussion on Stack Exchange. Google has also implemented an algorithmic prior art search utility that will be helpful to site participants.

On Ask Patents, participants can also ask and answer questions about the nuances of patent law or about specific patent applications.

Collectively, we’re building a crowd-sourced worldwide detective agency to track down and obliterate bogus patent applications. Over time, we hope that the Patent Stack Exchange will mitigate the problems caused by rampant patent trolling. It’s not a complete fix, but it’s a good start.
