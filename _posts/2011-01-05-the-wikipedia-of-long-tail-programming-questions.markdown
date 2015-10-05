---
author: spolsky
comments: true
date: 2011-01-05 16:10:05+00:00
layout: post
redirect_from: /2011/01/the-wikipedia-of-long-tail-programming-questions
slug: the-wikipedia-of-long-tail-programming-questions
title: The Wikipedia of Long Tail Programming Questions
wordpress_id: 6545
tags:
- company
- community
- design
- reference
---

Have you ever noticed how certain questions come up [again and again](http://meta.stackoverflow.com/questions/9686/what-is-the-most-rampant-duplicate-on-stack-overflow) on Stack Overflow sites?




Oh look, [my PC is freezing](http://meta.superuser.com/questions/1786/the-infamous-my-pc-is-freezing-question). [Should I use SELECT *](http://meta.stackoverflow.com/questions/52530/are-duplicates-creating-broken-windows)? Oh, and, how can I [host a server from home](http://meta.stackoverflow.com/questions/9686/what-is-the-most-rampant-duplicate-on-stack-overflow/50116#50116)?




Really, people, do you want to be answering these same questions ten years from now? How about when you're 65? That doesn't sound so appealing now, does it?




We predicted this problem, even before we launched Stack Overflow. Why? Because the same thing happened on Usenet, where:






  1. Most users could only see a few days or, at best, one month of archives for any given newsgroup. It was literally impossible to search the archives. I know that's hard to imagine for you youngun's, but this was before the web was even invented(!), and every Usenet site had to store their own copy of every newsgroup they were interested in reading, so there just wasn't enough room for archives.


  2. As a result, newbies would frequently ask the same beginner questions.


  3. Ye Olde Timers got Ye Olde Tired of this.




What happened next depended on the newsgroup.






  * If the old timers were feeling generous, someone would write a FAQ, and re-post it every week or two. This was supposed to prevent simple questions getting asked again and again. These [FAQs](http://www.faqs.org/faqs/) evolved into one of the early, great reference sources on the Internet before the WWW was invented.


  * Otherwise, the basic questions would just get asked again and again, and the old timers would grow bored and leave. The quality of the newsgroup would then deteriorate to approximately the level you would expect if seventh-graders were left to themselves, in other words, _Lord of the Flies_.





[![Lord of the Flies](/images/wordpress/lord-of-the-flies.jpg)](http://www.imdb.com/title/tt0057261/)



Stack Overflow does have a memory, and it has numerous mechanisms to prevent duplicates from getting through. We try to detect them even before the duplicate question has been asked. We have ways to [close questions](http://blog.stackoverflow.com/2008/12/i-move-to-close-this-question/) that are exact duplicates, we have ways of [merging two questions](http://blog.stackoverflow.com/2010/06/improved-question-merging/) that are identical if both questions already have quality answers, and we have extensive editing capabilities.




The editing capabilities are sometimes overlooked. With 100 reputation points, you can edit any post that has been marked as "community wiki." With 2000 reputation points, you can edit anything.




The editing feature is there so that old question/answer pairs can get better and better. For every person who asks a question and gets an answer on Stack Overflow, hundreds or thousands of people will come read that conversation later. Even if the original asker got a decent answer and moved on, the question lives on and may continue to be useful for decades.




This is _fundamentally different_ from Usenet or any of the web-based forums. It means that Stack Overflow is not just a historical record of questions and answers. It's a lot more than that: it's actually a community-edited wiki of narrow, "long-tail" questions -- questions that aren't quite important enough to deserve a page on Wikipedia, but which come up over and over again.




When you see a question that seems like it might reflect a common problem, don't just answer it to get a few points. That doesn't make the Internet any better. Instead, help us build up a library of canonical questions and answers that are more generic versions of the same question, and then start closing all the exact duplicates. Here are some guidelines:




**Don't answer questions that have already been answered elsewhere.** Yeah, you might earn a couple of points of reputation, but, because you are duplicating content, you are actually making the internet worse. Why? Because that answer might be true today, but as technology changes, it might not be true tomorrow. There are almost certainly thousands of wrong facts on Stack Overflow already, which may have been true when they were written but are no longer true. These facts will pollute the Internet for years. This problem is not tractable if we allow Stack Overflow to become just an endless river of questions and answers. It has to be more like a Wikipedia of Questions and Answers, with canonical answers that can be edited in one place, if we are ever going to stand a chance of keeping all the information that we expose to the Internet at least reasonably correct.




**If you're going to close a user's question as a duplicate, it has to be a real duplicate.** For example, if a user asks, "What does the IP address 128.0.1.1/24 mean?" it's OK to close that as a duplicate of a more general question like "What do IP addresses of the form a.b.c.d/e mean?" But it's not OK to close it as a duplicate of a twenty-seven page guide to netmasks. That's the moral equivalent of saying "[RTFM](http://www.urbandictionary.com/define.php?term=RTFM)." Stack Overflow is not meant to be a library of reference manuals. It's supposed to contain the same _information_ as a library of reference manuals, in the form of millions of questions and answers. Combined with Google, that gives us the magical power of a library of reference manuals you never have to read! It's like, you got to the library, and there's a wizard there at the door, and you ask your question, and, instead of being told to read a book, you just got (are you sitting down?) _the actual answer!_




That's why [we actually don't mind having several versions of every question](http://blog.stackoverflow.com/2010/11/dr-strangedupe-or-how-i-learned-to-stop-worrying-and-love-duplication/), where there are variations in wording or circumstances. The more chance that someone types a question into Google and finds _their exact question_ already answered, the better a job we've done.




**It is OK to edit a question to make it more general.** With the power of editing comes the power to take someone's selfish, very specific question, and edit it a little bit until they're asking the more general question that hundreds of people encounter. For example, if someone asks, "I set up a web server at home but I can't access it from work," it's OK to rewrite the question as, "What things should I check when a web server running at home is not visible on the Internet?" In fact, sometimes selfish, stupid questions of the "do my homework" variety can be easily edited into a form where the answer will provide an extremely valuable resource for the internet at large.




**Help us build a great library of canonical answers.** If you keep seeing the same form of questions, whether it's mod_rewrite rules on Server Fault, freezing computers on Super User, or how to use regular expressions to parse HTML, write a great, canonical answer, once and for all. Make it community wiki so that as many other people as possible can make it great. Work really hard on writing something that is clear, concise, and understandable by as wide an audience as possible.
