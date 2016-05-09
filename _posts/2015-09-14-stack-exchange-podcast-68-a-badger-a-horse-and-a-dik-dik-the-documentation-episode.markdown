---
layout: podcast
date: 2015-09-14
title: "Podcast #68 - A Badger, A Horse, and a Dik-dik (The Documentation Episode)"
author: hairboat
podcast: http://www.podtrac.com/pts/redirect.mp3/feeds.soundcloud.com/stream/223184390-stack-exchange-stack-exchange-podcast-episode-68-a-badger-a-horse-and-a-dik-dik-the-documentation-episode.mp3
tags:
- company
- podcasts
---

Welcome to Stack Exchange Podcast #68 recorded Tuesday, September 1, 2015 at Stack Exchange HQ in New York City. Today's podcast is brought to you by [Labor Day](https://en.wikipedia.org/wiki/Labor_Day) - don't forget to put those [seersucker](https://en.wikipedia.org/wiki/Seersucker) suits away for the season! Your hosts today are David Fullerton, Jay Hanlon, and Joel Spolsky, with special guest [Kevin Montrose](http://stackoverflow.com/users/80572/kevin-montrose).

Here's what seersucker looks like (in case you were wondering about it while the gang talks about seersucker for a weirdly long time):

![you're the seersucker, buddy](https://i.stack.imgur.com/JOKhP.jpg)

(*[image via wikipedia](https://en.wikipedia.org/wiki/Seersucker#/media/File:Seersucker01.jpg)*)

We've got two exciting things to talk about. First up: **Stack Overflow has 10 MILLION QUESTIONS!** We made [a web page](http://stackoverflow.com/10m) to celebrate, because that's what geeky web companies do. If you're too lazy click on that link don't worry because Jay eventually just starts describing the page to you. (Predictably, the conversation quickly devolves from celebration to discussion of how we can actually measure activity and helpfulness. Views? Sessions? Answers?) To celebrate, we asked folks to share their Stack Overflow stories [on Twitter with #SOreadytohelp](https://twitter.com/search?q=%23SOreadytohelp). Tons of people have shared so far (which may have something to do with the fact that you could win a t-shirt). 

Some of Jay's favorite selections:

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr">StackOverflow is the definition of all what&#39;s noble about this field: knowledge, sharing, rigor and dorky jokes. <a href="https://twitter.com/hashtag/SOreadytohelp?src=hash">#SOreadytohelp</a></p>-- Ahmed (@halflings) <a href="https://twitter.com/halflings/status/634481409349013505">August 20, 2015</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

(The dorkier, the better.)

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/stackoverflow?src=hash">#stackoverflow</a> in Nairobi helped me skip condescending librarians,unreliable Internet to stream tuts,limited dev community <a href="https://twitter.com/hashtag/SOreadytohelp?src=hash">#SOreadytohelp</a>.</p>-- Geoffrey Cimani (@asgardjotunheim) <a href="https://twitter.com/asgardjotunheim/status/634433014081191936">August 20, 2015</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

(Take *that*, librarians.)

<blockquote class="twitter-tweet" lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/SOreadytohelp?src=hash">#SOreadytohelp</a>&#10;Of all the &quot;world changing startups&quot; I think SO secretly is the most impactful one in the world. &#10;<a href="http://t.co/rXSuON6Vsq">http://t.co/rXSuON6Vsq</a></p>-- Goktug Yilmaz (@Esqarrouth) <a href="https://twitter.com/Esqarrouth/status/634477715320631296">August 20, 2015</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

(Oh no! Our secret's out!)

Okay, enough of that boring celebratory stuff. Our next topic is so big and exciting that I think it warrants a horizontal rule:

-----

Welcome to life *below the fold*.

So! It's time to talk about what Stack Overflow could do next. It was just about a year ago that we thought to ourselves: "we need more things besides questions and answers!" At least that's how Joel remembers it. To make a long story short, we're talking about a possible new content type: **Documentation**.  If you haven't read [the meta post](http://meta.stackoverflow.com/q/303865/865899) yet, you might want to skim it while you listen to this part. (I'll wait right here.)

Done skimming? Welcome back. We're still talking about documentation. As it currently stands all around the internet, documentation is frequently:

* Poorly written or included as an afterthought
* Out of date
* Incomplete
* Lacking in clear examples

We're thinking the Stack Overflow community can help improve the situation the way it did with Q&A, and we think that's the next thing we can do to serve developers. Here's what it *could* look like: 

![i believe the docs are our future](https://i.stack.imgur.com/M0bqw.png)
(*image via [kevin's meta post](http://meta.stackoverflow.com/q/303865/865899), seriously, go read it*)

Documentation is a really early-stage project, which is why we went to the community for feedback. We're still figuring out what level the docs will be at (but we already know there will be NO `toString()` DOCS ALLOWED). 

Also, the Power Glove used to be a thing: 

![who knows why we're talking about this](https://i.stack.imgur.com/uAhTh.jpg)

(*[image via wikipedia](https://en.wikipedia.org/wiki/Power_Glove)*)

After a bunch of discussion, David has determined that we're about halfway through the Documentation project: we're 6-8 weeks in, and [we've got 6-8 weeks to go](http://meta.stackexchange.com/a/19514/165581). Perfect!

Questions from the audience: 

* [Is SO inadvertently going to make projects stop writing their own docs?](http://chat.stackexchange.com/transcript/message/23817346#23817346) Maybe, but we doubt it. Other Q&A sites and forums still exist elsewhere on the internet, and documentation will too.
* [How <strike>did you</strike> do you plan to solve the issue of distributing reputation for a collaboratively edited page of documentation?](http://chat.stackexchange.com/transcript/message/23817350#23817350) The short answer is we aren't sure yet, and we have to observe how people actually use docs in the private beta. One thing we've kind of decided is that we don't think it makes sense to take rep away from you when someone else adds to something you wrote. (If you want to help solve this problem, [sign up for the beta](https://docs.google.com/forms/d/13ynCK-DEy0osod8VIENajnbFJNZxXm1jyeupBrl5v44/viewform)!)
* (paraphrased) [Why are you working on a Stack Overflow-specific new content type instead of something more applicable network-wide?](http://chat.stackexchange.com/transcript/message/23817342#23817342) The short answer is that it's really hard to solve problems or develop tools for hundreds of diverse needs, and you'll probably be bad at most of them if you try. If we'd set out to solve Q&A for the internet at large (instead of just programming) we wouldn't have ended up with Stack Overflow and it probably would have been worse for everyone. But something like documentation could be useful for a lot of sites, once we figure out how it will work for developers. Also, we have to very aggressively constrain so we can iterate as quickly as humanly possible.

Jay wants to talk about some other stuff, so here's another horizontal rule so nobody gets confused.

-----

We haven't talked about new sites in a while, so here's a very brief rundown:

* We have a [Law](http://law.stackexchange.com) site now
* We have an [Open Source](http://opensource.stackexchange.com) site, which deals with open source software and also other things that are not software 
* We have a [Portuguese Language](http://portuguese.stackexchange.com) site
* We have a [Computer Graphics](http://computergraphics.stackexchange.com) site
* We had an Arabic site at time of recording, but it's closing due to low activity levels
* For more, have a look at [the list of newest Stack Exchange sites](http://stackexchange.com/sites#newest)

Thanks for joining us!


