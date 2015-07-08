---
author: haneycodes
comments: true
date: 2014-09-16 19:46:15+00:00
layout: post
redirect_from: /2014/09/introducing-runnable-javascript-css-and-html-code-snippets
slug: introducing-runnable-javascript-css-and-html-code-snippets
hero: https://i.stack.imgur.com/teUBF.jpg
title: Introducing Runnable JavaScript, CSS, and HTML Code Snippets
wordpress_id: 14786
tags:
- company
- announcement
- community
- stackexchange
---

On Stack Overflow and our other code-related sites, [creating a minimal, complete, and verifiable example](http://stackoverflow.com/help/mcve) is the best way to get an answer to your question. We’ve always loved [JSFiddle](http://www.jsfiddle.net) and sites like it because they let both askers and answerers reference runnable, working code that demonstrates their problem or solution.

Unfortunately, the use of these external sites introduces a few problems:



	
  1. [If the link breaks, the post becomes worthless](http://meta.stackexchange.com/questions/114942/when-jsfiddle-and-other-related-sites-are-gone-so-is-the-information).

	
  2. If the code isn’t embedded in the page, visitors are [forced to go elsewhere](http://meta.stackexchange.com/questions/8231/are-answers-that-just-contain-links-elsewhere-really-good-answers) to get the [full content of the question or answer](http://meta.stackexchange.com/questions/80978/questions-linking-to-external-web-sites-instead-of-showing-code).

	
  3. Also, because the code isn’t a part of our post Markdown, changes to it don’t show up in the revision history.


The community voiced similar concerns around external sites, which eventually led us to [block posts that contain links to JSFiddle and similar sites without a corresponding code block](http://meta.stackexchange.com/questions/149890/prevent-posts-with-links-to-jsfiddle-and-no-code). This is an unnecessary burden for both askers and answerers.

So we’ve created our own way to embed runnable JavaScript, CSS, and HTML code blocks right in the body of a post. As of today, we're launching “Stack Snippets,” a fully integrated feature available on Stack Overflow and any other code-related Stack Exchange sites.


## How Do Stack Snippets Work?


With Stack Snippets, a code block:


[![Code block](//i.stack.imgur.com/kZPXw.png)](//i.stack.imgur.com/kZPXw.png)


Can become a _runnable_ code block:


[![Runnable code block](//i.stack.imgur.com/YMvu1.png)](//i.stack.imgur.com/YMvu1.png)


The code will not run until you press the “Run code snippet**”** button:


[![Runnable code block that has been executed](//i.stack.imgur.com/b9ukx.png)](//i.stack.imgur.com/b9ukx.png)




## How Do I Make A Stack Snippet?


Stack Snippets work for both questions and answers. In the Markdown editor window, there’s a new button that you can click to launch the Stack Snippets editor.


[![The Markdown toolbar with the new Stack Snippet button](//i.stack.imgur.com/h6BFu.png)](//i.stack.imgur.com/h6BFu.png)


The editor appears and allows you to enter HTML, CSS, and JavaScript (or any combination of them):


[![The Stack Snippet editor](//i.stack.imgur.com/wx8jF.png)](//i.stack.imgur.com/wx8jF.png)


Once you’ve got your code working, press "Insert into Post" at the bottom and you’re done! You can test your snippet, or load it back into the Snippets editor from right in the Preview screen:


[![The run and edit options of Stack Snippets in the editor preview](//i.stack.imgur.com/KO2TC.png)](//i.stack.imgur.com/KO2TC.png)


When answering a post containing a snippet, you can easily include a modified version of the original in your answer - just click the "Copy snippet to answer" button.


## Under the Hood


A great feature of Stack Snippets is that they are inserted as **regular Markdown code blocks**:


[![The actual Markdown of a Stack Snippet](//i.stack.imgur.com/zXjtQ.png)](//i.stack.imgur.com/zXjtQ.png)


This makes them instantly backwards-compatible with our normal revision history and diffs, and also any API clients including our own [mobile](http://blog.stackoverflow.com/2014/05/stack-exchange-for-iphone-is-here) [apps](http://blog.stackoverflow.com/2014/01/stack-exchange-for-android-is-here).

The runnable snippets behavior is triggered by a few new HTML comments that are not rendered by Markdown. You can even edit the code right from the Markdown editor and the snippet will still be runnable.


## Are Stack Snippets Safe?


**Yes, as much as the web in general is safe.** You are not in any more danger than you are when browsing any site with JavaScript enabled. With that said, the snippets _are running client code in your browser_, and you should always exercise caution when running code contributed by another user.

We isolate snippets from our sites to block access to your private Stack Exchange data:



	
  * We use **HTML5 sandboxed iframes** in order to prevent many forms of malicious attack.

	
  * We **render the Snippets on an external domain** ([stacksnippets.net](http://stacksnippets.net)) in order to ensure that the same-origin policy is not in effect and to keep the snippets from accessing your logged-in session or cookies.


Like all other aspects of our site, Stack Snippets are ultimately **governed by the community**. Because users can still write code that creates annoying behaviors like infinite loops or pop-ups, we disable snippets on any post that is heavily downvoted (scoring less than -3 on Stack Overflow, -8 on Meta). If you see bad code that you think should be disabled, **downvote the post**. If you see code that is intended to be harmful (such as an attempt at phishing), you should **flag it for moderator attention**.


## What About Other Languages?


Our initial release supports HTML, CSS, and JavaScript because questions on these topics use external code hosting sites the most frequently. These languages also run client-side in the user’s browser, making them self-contained and easy to support. Server-side languages are much more complicated and require significant infrastructure changes in order to properly implement. We don’t have any specific plans at this time to implement other languages, but it’s something we might consider in the future.


## What About Sites Like JSFiddle?


**You can still use sites like JSFiddle if you prefer them**. JSFiddle and similar sites still have a bunch of features that we have not implemented yet. The normal rules for a link still apply: make sure you [copy the relevant code](http://meta.stackexchange.com/questions/84342/answer-that-only-contains-a-link-to-jsfiddle) into your question or answer so that it can be accessed if the external site is unavailable.

We decided to implement our own version instead of embedding a third-party site for the reasons mentioned earlier:



	
  * **There’s no need to copy-paste the code into the post.** It’s all embedded in the post automatically, so revision history and diffs just work.

	
  * **There’s no need to visit another site to get your answer. **The best experience is one where your question and answer(s) are complete and on the same page.

	
  * **Since we host it, we can guarantee performance and up-time**. We have high standards when it comes to performance and up-time, and want to make sure that the ability to run a snippet is always available.




## Give Stack Snippets A Try


We’re excited to see how the community uses Stack Snippets, and looking forward to your feedback:



	
  * If you find bugs, or you’d like to give specific feedback on Stack Snippets, you can post on [Meta Stack Exchange](http://meta.stackexchange.com/questions/ask?tags=stack-snippets) using the tag [stack-snippets](http://meta.stackexchange.com/questions/tagged/stack-snippets).

	
  * If you just want to try it out, we’ve [created a sandbox on Meta Stack Exchange](http://meta.stackexchange.com/questions/239456/stack-snippets-sandbox-try-it-out-here).

	
  * If you feel that a particular site should have Stack Snippets, post a feature-request on that site's meta - if there's support from the community there, we'll enable them.


[We've already started piloting it on Code Review and are seeing some neat results](http://codereview.stackexchange.com/questions/62577/bouncing-stacking-boxes). Don't hesitate to share interesting examples you come across - _or create_ - here in the comments.

Have fun!
