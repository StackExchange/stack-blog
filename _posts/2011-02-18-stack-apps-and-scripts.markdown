---
author: jeffatwood
comments: true
date: 2011-02-18 23:12:43+00:00
layout: post
redirect_from: /2011/02/stack-apps-and-scripts
hero: 
slug: stack-apps-and-scripts
title: Stack Apps and Scripts
wordpress_id: 7244
tags:
- company
- API
- stackexchange
- community
---

As part of our ongoing improvement to [our 1.1 API release](http://blog.stackoverflow.com/2011/02/stack-exchange-api-1-1-and-improved-app-gallery/), and the site that supports our API, [stackapps.com](http://stackapps.com), **we've extended Stack Apps to support the listing of browser scripts**.

[![](https://i.stack.imgur.com/toGoR.png)](http://stackapps.com/?tab=scripts)

Since Stack Overflow began, there have been tons of nifty browser scripts people have created to enhance their experience -- and they usually work on [any site in our network](http://stackexchange.com/sites). In fact, you may remember that [the favorite / ignored tags feature](http://blog.stackoverflow.com/2008/10/expressing-your-tag-preferences/) now built into every site originally started life as [a user script listed on userscripts.org](http://userscripts.org/tags/stackoverflow) by Jonathan Buchanan aka [insin](http://stackoverflow.com/users/6760/insin).

We're making user scripts a first class citizen on Stack Apps by …



  * giving them their very own **script tab** on the homepage powered by the [script] tag.

  * updating the /faq and introductory messages to emphasize that browser scripts which enhance the Stack Exchange experience are welcome, even if they don't technically use the API.

  * continuing to publicize the cool and useful scripts our community is creating from within our own community.

If you're wondering how browser scripts work, the good news is that 
**GreaseMonkey support is _almost_ standard across most major browsers now.** We updated the [script tag wiki](http://stackapps.com/tags/script/info) to walk you through the process of installing user scripts in your browser. It's easy -- really!

Take Ned Batchelder's script on [How to not get reputation points on Stack Overflow](http://nedbatchelder.com/blog/201102/how_to_not_get_reputation_points_on_stack_overflow.html), for example: 



    // ==UserScript==
    // @name No answering on Stackoverflow
    // @namespace http://nedbatchelder.com/greasemonkey
    // @description Hide the answer box on Stack Overflow
    // to stop obsessive behavior
    // @include http://stackoverflow.com/*
    // ==/UserScript==

    GM_addStyle(
    "@namespace url(http://www.w3.org/1999/xhtml); " +
    ".question-page #post-form { display: none; }"
    );




That's a very, very simple browser user script which hides the question answer form on Stack Overflow. If you're using Google Chrome for example, all you need to do to install that little fragment of code in your web browser is click the [no-so-answers.user.js](http://nedbatchelder.com/code/misc/no_so_answers.user.js) link -- like so:

 ![](/images/wordpress/chrome-install-user-scripts.png)

User scripts can be managed by clicking the wrench icon in the toolbar and selecting Tools | Extensions, or of course by entering `chrome://extensions` in the title bar.

That's how easy it is!

We've already contacted everyone via email who had user scripts posted on Meta Stack Overflow. We'd like to get those all migrated to [Stack Apps](http://stackapps.com/?tab=scripts) so the community has one place to go for a centralized directory of cool, useful scripts that make our sites work better.

So if _you_ have a cool user script that works on a Stack Exchange site, and you think others might find it useful or interesting, **please [list your script on Stack Apps!](http://stackapps.com/questions/ask?tags=script)**
