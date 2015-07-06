---
author: jeffatwood
comments: true
date: 2008-12-28 10:44:34+00:00
layout: post
redirect_from: /2008/12/reverse-engineering-the-wmd-editor
slug: reverse-engineering-the-wmd-editor
title: Reverse Engineering the WMD Editor
wordpress_id: 201
tags:
- company
- design
---


We've been quite happy with the [WMD Markdown editor](http://wmd-editor.com/) on Stack Overflow, kindly provided by the author, John Fraser of AttackLabs.



However, there are definitely some outstanding bugs and issues with it that we'd like to fix. Progress on this front has been severely hampered by three problems:







  1. We only have obfuscated / minified versions of the WMD editor JavaScript code.

  2. I've been unable to reach John over the last 4 months.

  3. My JavaScript skills are average at best.




I'm not sure what happened to John, because he was super responsive and enthusiastic early on. He helped us out in a bunch of large and small ways with the WMD implementation. Originally **he planned to give me a drop of the un-obfuscated/minified WMD source**. But I never heard back from him, and he seems to have fallen off the face of the planet in the last 4-6 months. I've sent him brief emails like clockwork every few weeks, but there's no response. I hate to be naggy, but the alternatives are.. bad.



So it is with great regret and heavy hearts that we undertake **the painful odyssey of manually un-minifying/obfuscating the WMD code ourselves**. [Chris Jester-Young](http://stackoverflow.com/users/13/chris-jester-young), one of the earliest Stack Overflow users, has invested in a substantial amount of effort in this already. He's set up a git repository for our progress so far:




    
    
    http://github.com/cky/wmd/tree
    





(I should add that Chris, like myself, is a git noob, so be gentle!)



Chris adds the following comments:





>
1. How will we coordinate the changes? Do we want to have a forum where people can post links to their repositories? (My repository is writable by me only -- but Git being a distributed VCS, this is not a problem, people just clone their own.) Or do you prefer to have a central repository that everyone checks into? In this case, I'm happy to check things into it -- or you can import it from my repository.

> 
> 
2. How will we manage "knowledge transfer", such as it were? It would help people if I could write some notes (in a wiki or something, so others can update it) on how to go about the translation. Maybe use a community-modded Stack Overflow question dedicated to this? Ideas welcome.

> 
> 
I'll try to get more changes checked in periodically, but I still have a ton of projects to clear, so getting the ball rolling with other coders would probably be a good idea.






**The easiest way forward is to somehow get a source code drop from John Fraser to start with.** If anyone knows him, or knows someone that knows him, can you please try to get in touch? Otherwise it's back to the salt mines of de-minifiying/obfuscating the JavaScript, until we get it all done.



Beyond that, **I'd like to create a Stack Overflow branch of the WMD code**, under a very permissive license. We have some needs specific to our website, of course, but I'd like to give our modifications, improvements, and bugfixes back to the greater community as well.



My gut feeling is that we should go with a "real" code hosting solution for this project, perhaps Google Code or the like..

