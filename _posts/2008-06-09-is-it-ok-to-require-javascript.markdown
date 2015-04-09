---
author: jeffatwood
comments: true
date: 2008-06-09 11:52:16+00:00
layout: post
redirect_from: /2008/06/is-it-ok-to-require-javascript
slug: is-it-ok-to-require-javascript
title: Is It OK to Require JavaScript?
wordpress_id: 50
tags:
- company
- design
---


Here's one decision we're pondering as we build stackoverflow, and I'd like to get your feedback on it:



**Is it OK to require JavaScript to participate?**



Note that by "participate" I mean "edit, answer or ask a question". Of course passively reading a question and the associated answers will work fine without JavaScript enabled.



In addition to the [aforementioned WMD editor](http://blog.stackoverflow.com/index.php/2008/05/potential-markup-and-editing-choices/), we're using [JQuery](http://jquery.com/) to build some cool interactive features into the site, most of which deal with asking and editing questions.



I [asked this question on Twitter](http://quotably.com/codinghorror/statuses/830271411) and got a "mostly yes" answer, with a few objections.



While we do believe in [progressive enhancement](http://en.wikipedia.org/wiki/Progressive_Enhancement), it's possible that some of the features we're building for asking and editing may be so dynamic that they do not degrade well, if at all.



What say you? Is it OK for a website in 2008 to _require_ JavaScript for active (not passive) participation?

