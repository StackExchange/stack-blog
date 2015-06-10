---
author: rcartaino
comments: true
date: 2010-05-24 16:15:14+00:00
layout: post
redirect_from: /2010/05/interview-with-lead-developer-david-fullerton
hero: 
slug: interview-with-lead-developer-david-fullerton
title: Interview with Lead Developer David Fullerton
wordpress_id: 3384
tags:
- company
- stackexchange
---

The last few weeks have felt strangely quiet on  Internet landscape of Stack Exchange. There was the [big announcement](http://blog.stackexchange.com/post/518474918/stack-exchange-2-0) and then all went  quiet—little news on the web sites, few blog posts to mention, and the podcasts have been  on hiatus.

But behind scenes, everything is buzzing. Our [internal chat  room](http://blog.stackoverflow.com/2010/04/do-trilogy-sites-need-a-third-place/) is stuffed with weeks of screen shots, UI discussions, new software releases and dog-rearing advice. Without the perpetual chat transcripts, you couldn’t go to lunch without missing a major design  change and two release pushes.

Now the Stack Exchange staging area is nearly  ready. And it’s slick. The design is done and we’re soliciting users to sign up for  an early beta test launching in the next week or so.


## So why has it been so quiet?


The official line is that you’re not supposed to  interrupt programmers working on Important Stuff™ to do blog posts. So I decided  that, in lieu of making a bunch of stuff up, I would grab my super-secret spy  microphone and chat with one the developers.


## I sat down with Stack Exchange 2.0 Lead Developer David Fullerton to  catch up on what’s coming up…


**Robert:** So what have you guys been working  on since the SE 2.0 announcement?

**David: **After the announcement, we knew the  end result we wanted to accomplish so then we needed to come up with a process that  would allow these sites to be created. The New York team has been working on the new  site proposal system area almost exclusively. The Stack Overflow distributed team has  been working on the [Stack Exchange API](http://blog.stackoverflow.com/2010/05/stack-exchange-api-public-beta-starts/) which was crucial in tying the whole thing together.

**Robert: **What is the new site proposal tool?

**David: **The site proposal tool is a staging  area for new sites. It is a dedicated system to help people propose and define  sites. Typically, you go there because you heard about a site being created and you want  to play a role in the creation of that site. But, if you have an idea for a site  which has not been proposed, you can add it. The staging area lets people define  these sites and lets people track the progress of any site as it goes through this  process.

**Robert: **When is the new Stack Exchange going  to be ready?

**David: **We’re ready to start early beta  testing for the new proposal site. We have a small group of beta testers and a first  batch of proposals derived from some of the most [popular  proposals from meta.stackexchange.com](http://meta.stackexchange.com/questions/tagged?tagnames=site-proposal&page=1&sort=votes&pagesize=15). After a week of initial testing, we’ll open  it to a bit larger audience. Based on their feedback, we hope to quickly open  the system to the public to start submitting their site proposals.


## Meta Proposals vs. the SE 2.0 Staging Area


**Robert: **There are already over one hundred  sites proposed on meta.stackexchange.com. Why not just use those proposals to create  new sites? Why a whole new system?

**David: **We learned a lot watching the meta  proposals. The big problem we saw was that, the better the original proposal, the less feedback they got from the community. Users felt that there was no need  to add more information. Typically, one person comes up with a site idea. They  come up with sample good and bad questions. That’s about it. Other people, maybe  they offer some feedback but it’s usually the one person.

We’re trying not to put the burden of fleshing out  the proposal on the person who creates the proposal.  We really want the  initial idea to start a steady, on-going democratic process. We want you to  submit an incomplete proposal as part of getting other people involved in the  process. The role of the staging area is to keep people engaged in the site’s development. This is all part of building up momentum for the site’s  launch.


## Defining a Site


**Robert: **How does a site actually get defined  using this tool?

**David: **If you have an idea for a site that  has not been proposed, you just click the “propose a new site” button. All we want you to do is enter a simple title and description for the site.  Nothing too elaborate. Keep it as simple as possible at this point. A site for  dog enthusiasts would get a title like “dogs.” It’s the description of the site that defines who the experts are in your community. This is  important. A description like “a site for anybody interested in dogs” isn’t going to work too well.  A good expert community about dogs would better  be described as a site “For dog trainers, dog breeders, and professional dog walkers.”

**![](/wp-content/uploads/proposal.png)**

People interested in the site can “follow” it.  Followers define the site by submitting sample questions. These questions are  discussed and voted on as either on- or off-topic. We use that collaboration to  start building a consensus as to what the site is about.

The main page shows the list of proposed sites. The  listing shows the title and description as well as how many people are involved  in defining the site. People follow the proposal, they submit questions,  and vote on its content. An indicator on the main pages shows how far the site  has progressed towards launch.

![](/wp-content/uploads/proposal-progress.png)

**Robert: **How many followers and questions  will it take to launch a site?

**David: **It’s too early to apply actual  numbers to the process. That’s why it’s so important to get this out: to see how the  process evolves. We’ll look at how many questions have been asked. We’ll see how  many people are following the site. We’ll track what level of interest there  is in a site. See if they’re coming to a consensus about what’s on- and  off-topic. We’re going to watch the proposals closely and refine the criteria to  assure that a strong proposals continue to make progress while letting smaller  sites develop at their own pace.

There’s no rush to judge a site proposal. We want  to make sure that sites have all the time they need to develop properly. That  can happen very quickly for a mainstream site. It might take longer for  smaller sites. Smaller sites need time to reach out to experts and develop a  following. The whole point of this process is to determine if there is enough  consensus and support to create a full site.


## Migration of SE 1.0 Sites


**Robert: **For users who already have a Stack  Exchange site, are they going to be able to move their sites over to the new  system?

**David: **It depends on the site. Many Stack  Exchange sites are really struggling. If we just move them over the new system,  they’ll be no better off than before and that’s what we’re trying to avoid. The  staging area is designed to benefit a site’s development, not to hold them back.  There are very few sites that wouldn’t benefit from this process. The staging  area will renew interest in the site and maybe they’ll pick up a few new  ideas along the way.

**Robert: **How will the transition of sites to  the new system work?

**David: **We’ll have more information about  this shortly. We’re still working on some issues. The problem we are up again  is that moving a site over isn’t as simple as copying the data. The code  bases are different and the databases are different. You also have to worry about  whether the Q&A matches any democratic changes made to the site’s  definition. Some sites will want to broaden or narrow their scope. And the users, there’s  issues of automatic association of accounts with the larger Stack Exchange  network.

We don’t want to cause more initial problems that  we’re solving by forcing a direct migration. These sites are going to be  around a long time. We don’t want to start out with bad data. We’ll be talking to  the individual sites and working out how that could work. It’s a matter of  what’s best for the site.


## Merging Stack Overflow Sites


**Robert: **You mentioned the different code  bases. You’re talking about when Stack Exchange branched off of the Stack Overflow  code. Stack Overflow has continued their development separately from Stack Exchange,  adding features like improved searching, interface improvements, better  notifications and collaboration, and now they’re even talking about a new chat  application. Will Stack Exchange get all this new stuff?

**David: **Yes! We decided that, for SE 2.0, it  would actually be easier to start from the Stack Overflow code base and  selectively pull over the best of the Stack Exchange changes we made over the  months.

Stack Overflow, Server Fault, Super User: they are essentially, at their core, Stack Exchange sites—the first of the Stack  Exchange sites. Anything that’s added to Stack Overflow at this point is  essentially added to the network. Account association between sites is much smoother. The  API they’ve been developing is a great way to get new features added to the  system. People can write software to add new features to these sites, including  the Stack Exchange sites.

**Robert: **For someone who already has a site  on SE 1.0, what should they be doing now to prepare their proposals.

**David: **The most important thing to do now is  focus on your site and your community.  Don’t worry about the proposal process  right now. You’re building support for your site and that’s the most important  thing. The biggest role you can play in the new system is to shore up your site  and your current user base. Whether it comes down to migrating your site or creating a new site, you’re establishing what works and does not work in  your community.

**Robert: **Is there anything else you would  like to add?

**David: **We’ve been quiet for the last few  weeks. It was not our intention to be secretive.  It is difficult to discuss a  system when there’s nothing to see, especially early on when we hadn’t even  nailed down how it was going to work. Now that the system is going online, we  want to get back to having these discussions with the community. They’re long  overdue. The site proposal tool gives us that foundation to start that process  again. We want to get it out there as quickly as possible so we can start getting  that feedback.  We know the end results we want but how to get there is a bit  of an experimental process and we want to get feedback from community for what  is the best way to do this.
