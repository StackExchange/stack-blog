---
author: jeffatwood
comments: true
date: 2008-06-20 09:06:51+00:00
layout: post
redirect_from: /2008/06/safe-html-and-xss
slug: safe-html-and-xss
title: Safe HTML and XSS
wordpress_id: 56
tags:
- company
- design
---


As I've mentioned before, [we are using the most excellent WMD Markdown editor](http://blog.stackoverflow.com/2008/05/potential-markup-and-editing-choices/), for the reasons I outlined in that post.



However, [Markdown](http://en.wikipedia.org/wiki/Markdown), per [the official spec](http://daringfireball.net/projects/markdown/), **supports both HTML syntax _and_ Markdown syntax**. You can mix and match both syntaxes freely. This is great if you want to stick with HTML and not learn any of the Markdown syntax, something [I've actually argued for in the past](http://www.codinghorror.com/blog/archives/001116.html). However, I would also argue that Markdown is much less typing for the same effect, and it's easier to read, so it's worth learning. Markdown will save you time in the long run. Allowing HTML is great for flexibility and choice, but it's perhaps too much of a good thing: **you can use _any_ HTML.** 



Try it yourself -- [visit the advanced WMD demo](http://wmd-editor.com/examples/splitscreen) and just start keying in whatever kind of wacky HTML you can dream up. Go ahead. Try it.



This is bad.



Very, _very_ bad.



The WMD control renders exactly the HTML you type, and submits it as-is to the server. Which means we, our webserver, our webpages, could be rendering javascript of unknown provenance.



That's [cross-site-scripting (XSS)](http://en.wikipedia.org/wiki/Cross-site_scripting) in a nutshell. 





<blockquote>
In recent years XSS surpassed buffer overflows to become the most common of all publicly reported security vulnerabilities. [ed: <a href="http://www.codinghorror.com/blog/archives/000841.html">the last time I wrote about this</a>, in early 2007, buffer overflows were more common.] Likely at least 70% of websites are open to XSS attacks on their users. Site administrators rarely fix XSS problems and, when they do, the hole is likely to have been open for more than a month and a half. In general, cross-site scripting holes can be seen as vulnerabilities present in web pages which allow attackers to bypass security mechanisms. By finding clever ways of injecting malicious scripts into web pages, an attacker can gain elevated access privileges to sensitive page content, session cookies, and a variety of other objects.
</blockquote>





Incredibly scary stuff. And it's all due to **insufficient sanitization of user input**, where HTML, or some subset of HTML, is allowed. Check out [some of the standard XSS exploits](http://ha.ckers.org/xss.html) for examples of clever ways hackers can exploit the tiniest of oversights in your HTML input sanitizing. Think there's just five or six ways to build an `<a>` or `<img>` tag? Think again. There are _hundreds!_



So that's my challenge with the WMD editor. **I have to write XSS-proof code to sanitize the HTML input on the server before I write it to the database.**



I'd like your feedback on how best to do this. Here's my general approach, in pseudocode form. Given a random HTML string..







  1. Run a regular expression to match all the HTML `<tags>` in the HTML string.

  2. For each individual tag match, verify that it passes our tag regular expression **whitelist**.

  3. If the tag match does not pass, **remove the entire tag from the content**.

  4. Repeat from step 2 until we're out of tags.

  5. Return the sanitized HTML string.




Update: removed unnecessary extra code; all input is processed by the HTML sanitizer.



It's slightly too much code to post here in a blog entry, so I have [posted my C# SanitizeHtml routine on RefactorMyCode.com](http://refactormycode.com/codes/333-sanitize-html). **Please take a look and let me know what you think.** (scroll to the bottom, however, to see the latest "refactoring".) Help me refactor my code, because [I make shitty software, with bugs!](http://www.codinghorror.com/blog/archives/000099.html) 



I've been itching for an excuse to link to [RefactorMyCode](http://refactormycode.com) for a while. It's a great site for coders, and signing up to submit code is super easy through OpenID -- no redundant account creation necessary!



Even if you have no interest whatsoever in my crappy SanitizeHtml function, I encourage you to [visit RefactorMyCode](http://refactormycode.com) and consider the value of many internet eyes on a snippet of _your_ code.

