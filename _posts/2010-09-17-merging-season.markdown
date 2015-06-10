---
author: spolsky
comments: true
date: 2010-09-17 17:03:47+00:00
layout: post
redirect_from: /2010/09/merging-season
hero:
title: Merging Season
wordpress_id: 5144
tags:
- company
- Area51
- community
- stackexchange
---

[Area 51](http://area51.stackexchange.com/) is filling up with thousands of ideas for new [Stack Exchange sites](http://stackexchange.com/sites), and a pretty clear pattern has started to worry us: too many ridiculously niche proposals, overlapping proposals, and proposals that are already covered by an existing site.

Do we really need a site for [each](http://area51.stackexchange.com/proposals/2978/drupal-answers) [individual](http://area51.stackexchange.com/proposals/15362/dotnetnuke) [content](http://area51.stackexchange.com/proposals/6810/kentico-cms) [management](http://area51.stackexchange.com/proposals/18767/composite-c1) [system](http://area51.stackexchange.com/proposals/8740/silverstripe)?

The Stack Overflow experience taught us one thing pretty unequivocally: bigger is better. We didn't make Java Overflow and .NET Overflow and Ruby Overflow, we made one big site for all programmers and told them to use tags and, lo and behold, it worked. Why?




	
  1. **Critical Mass.** A wider site is more likely to attract enough people that questions actually stand a decent chance of getting answered.


  2. **Rich, interesting information.** A broad site is more likely to attract people who want to learn something a little bit outside of the problem that they're having right this minute.


  3. **Easier to remember and share.** Stack Overflow grew to be successful because programmers told each other, "try asking on Stack Overflow." If we had made 2500 different sites for every possible niche programming technology, nobody could have known about all of them.



So. We should just make one or two gigantic sites, right? OK, done.

Well, not quite. There were a few counter-examples which worried us.




  1. **[Yahoo! Answers.](http://answers.yahoo.com/)** Monumentally popular, enormous traffic, and containing absolutely no useful information, Yahoo! Answers is actually more of a teenage chat room than a place to get real answers.


  2. **[Our own, failed Gadgets site.](http://blog.stackoverflow.com/2010/09/pruning-season/)** Covered a huge number of topics, but nobody cared enough about any of them. Only 80% of questions got answered because the few hundred regular visitors just didn't know the answers to questions about every obscure universal remote.


  3. **[Our own, failed attempt to bring the Unix and Ubuntu sites together.](http://blog.stackoverflow.com/2010/09/fork-it/)** We were essentially faced with a community with very strong emotional reasons they wanted to keep their site separate, and we caved and let them split.





## So, what's the right size domain for a Stack Exchange site?



Imagine that one day, due to a monumental lapse in judgement, you find yourself thrown into a Turkish prison. You're an American, you don't speak a word of Turkish, nothing makes any sense to you, but there's this Swedish guy there in the prison, so the two of you become instant friends because you're the only non-Turks in the place, he speaks pretty good English, and you really feel like you have something significant in common. 

When you get home, though, you marry your high-school sweetheart, and settle down in the suburbs, and you can barely stand those icky people who send their brats to the filthy Newton South High School instead of Newton North. Hooligans!

![TACO HAS A BUCKET](/images/wordpress/IMG_0329.jpg)

(Jeff wants me to put pictures in my blog posts. This is my dog Taco. Taco has a bucket!)
 
Communities consist of concentric circles. You share more with people in the inner circle than you do with people in the outer circles, but if you were in a strange place, you'd seek out people even from the larger circles. If you're building a community (or a Stack Exchange site), it's not immediately obvious which level is going to work:

	


		
  * Outdoors enthusiasts _(most broad)_

		
  * Snowboarders, Skiers, and Mountain Bikers

		
  * Snowboarders

		
  * Snowboarders in Wanaka, New Zealand

		
  * Snowboarders at the Treble Cone resort in Wanaka, New Zealand

		
  * The SUMMIT NZ Freeheel Challenge, Treble Cone, Wanaka, New Zealand, on September 25th, 2010 _(most specific)_

	

We originally thought that this problem would magically sort itself out through the Area 51 process, but lo and behold, we often have several proposals at all levels of the scale:

	
		
  * [Music](http://area51.stackexchange.com/proposals/17796/music) - 6 followers

		
  * [Musical Practice and Performance](http://area51.stackexchange.com/proposals/4059/musical-practice-and-performance) - 88 followers

		
  * [Guitars](http://area51.stackexchange.com/proposals/6320/guitars) - 99 followers

		
  * [Classical Guitar](http://area51.stackexchange.com/proposals/8874/classical-guitar) - 3 followers

		
  * Andrés Segovia's Private, One-Person Stack Exchange - not created because he is deceased

	

The democratic process seems to be teetering between wanting to create a site for every instrument vs. bunching all the practicing musicians together. The stakes are high--we don't want another Unix/Ubuntu incident. So we have to figure out some rules that will help us create sites that are the right size.

One of Clay Shirky's laws is that people working on social software have a tendency to ignore everything that's come before and reinvent the wheel, badly, [again and again](http://www.shirky.com/writings/group_enemy.html):



<blockquote>Now, when I say these are three things you have to accept, I mean you have to accept them. Because if you don't accept them upfront, they'll happen to you anyway. And then you'll end up writing one of those documents that says "Oh, we launched this and we tried it, and then the users came along and did all these weird things. And now we're documenting it so future ages won't make this mistake." Even though you didn't read the thing that was written in 1978.</blockquote>



Surely someone has had this problem before, right? The best example I could think of was academic departments. For some reason, the major world universities seem to have a general idea of what the right scope is for an academic department. There's almost always just one anthropology department, even though physical anthropology and cultural anthropology are so completely disjoint that "the two fields are largely autonomous, having their own relations with disciplines outside anthropology; and it is unlikely that any researchers today work simultaneously in the fields of physical and cultural anthropology" [[Encyclopædia Britannica](http://www.britannica.com/EBchecked/topic/146165/cultural-anthropology)].

We have our own academic examples of that: [Math Overflow](http://mathoverflow.net/) has been [hugely successful](http://www.mercurynews.com/san-jose-neighborhoods/ci_15713739) despite the fact that research mathematicians working in one corner of the field may have absolutely nothing to talk about with people in other corners of the field.

So: the right size might be somewhere around the size of a university department. Somehow, the cultural anthropologists don't mind sharing a building with the physical anthropologists, and when they both find themselves at the Yale-Harvard football game, you can bet that they'll sit together and find something anthropological to talk about. Similarly, at Stack Overflow, the Java Entity Bean programmers at insurance companies don't mind all the iPhone developers asking Objective C questions about the [horrible, horrible game](http://gaming.stackexchange.com/q/3748/230) they're working on. Heck, they might become iPhone developers one day. And they both share the humiliation of not being able to fix their uncle's virus-infested Windows XP machine when they're home for Thanksgiving.

In other words, you can be surprisingly inclusive and broad and still have a successful site, and people will be perfectly happy: Stack Overflow proves that. You do have to be careful not to try to create a site that's _so broad_ that you don't have anyone around who can answer all the questions (the "Gadgets problem"), but as long as you have coverage and questions get answered well, the broader, the better.



## We need some rules!



Here's the best we could come up with for deciding whether site X should be subsumed by site Y:

	


		
  1. Almost all X questions are on-topic for site Y

		
  2. If Y already exists, it already has a tag for X, and nobody is complaining

		
  3. You're not creating such a big group that you don't have enough experts to answer all possible questions

		
  4. There's a high probability that users of site Y would enjoy seeing the occasional question about X

	

So. Should [Guitars](http://area51.stackexchange.com/proposals/6320/guitars) just be a part of [Musical Practice and Performance?](http://area51.stackexchange.com/proposals/4059/musical-practice-and-performance) Yes... I think all four conditions are met. Should everything be rolled up into a mega [Music](http://area51.stackexchange.com/proposals/17796/music) site? In principle, we could, but I think that you would end up with people asking questions about obscure Grateful Dead bootleg tapes that we just don't have a large enough community to answer, so condition 3 does not apply. How about a big generic "Entertainment" site? Here condition 3 and 4 definitely are not met.

![IMG_0331.JPG](/images/wordpress/IMG_0331.jpg)



## Next steps



Right now, there are a ton of active proposals on Site 51 which are, in our opinion, too small to justify their own Stack Exchange sites. Ignoring proposals with 30 or fewer followers, there's still a long list of proposals that could reasonably be included on Stack Overflow, _possibly_ including:




Compiler Design
Artificial Intelligence
Machine Learning
Android Developers
Databases
Webservice APIs
iPhone Development
Operating Systems Development
Regex
Genexus
JetBrains ReSharper
Natural Language Processing and Computational Linguistics




There's an even longer list of things that really belong on the new [Programmers Stack Exchange](http://programmers.stackexchange.com/), which appears to be degrading into fairly stupid water-cooler nonsense, and could benefit from an infusion of more meaty subjects, like these proposals:




Software Engineering
Developer Testing
Scrum
Selenium
Visual Studio ALM
Healthcare IT
Practical Algorithms and Data Structures
Software Law
Software QA
Vi, Vim, Vixens
Code Golf  & Programming Puzzles
Software Design Patterns
Software Architecture
Numerical Modeling and Simulation
Cognitive Science
Emacs
Freelance Developers




That said, we're firmly committed to the ideal that the community itself has to make the ultimate decisions, so in the coming weeks, we'll be building mechanisms that make it possible to discuss and hash out possible proposal mergers. In any case, there's a huge amount of value to getting these small factions together so they can join forces in setting up large, robust sites that genuinely make the Internet a better place.
