---
author: jeffatwood
comments: true
date: 2011-09-30 05:33:06+00:00
layout: post
redirect_from: /2011/09/stack-exchange-api-usage-stats-and-api-2-0-plans
hero: 
slug: stack-exchange-api-usage-stats-and-api-2-0-plans
title: Stack Exchange API Usage Stats and API 2.0 Plans
wordpress_id: 9955
tags:
- company
- API
---

Stack Exchange has a very full featured, albeit currently read-only, API. You can view some of the nifty applications people have created with the Stack Exchange API in the [app gallery on Stack Apps](http://blog.stackoverflow.com/2011/02/stack-exchange-api-1-1-and-improved-app-gallery/), or check out the [winners of the Stack Exchange API contest](http://blog.stackoverflow.com/2010/08/stack-exchange-api-contest-winners/) we held last year.

We're currently in the planning stages for **Stack Exchange API 2.0.** There's [a draft API 2.0 specification on Stack Apps](http://stackapps.com/questions/2588/draft-specification-for-api-v2-0), so head on over there and take a look if you want a voice in that process.

As a part of our research process leading up to 2.0, we analyzed usage statistics of the API to date. For the period from **8/21/2011** to **9/21/2011** inclusive, there were **34.2 million** requests against the API. That's about 12 requests per second. 

API usage skews heavily toward users and questions:

![](/images/wordpress/stack-exchange-api-1-1-usage-pie-graph.png)

The top API calls, by volume, are:

<table width="300px" >
<tr >
<td >
/users/{ids}/timeline
<td align="right" >7.8m</tr>
<tr >
<td >
/users/{ids}
<td align="right" >5.2m</tr>
<tr >
<td >
/users/{ids}/mentioned
<td align="right" >4.2m</tr>
<tr >
<td >
/questions
<td align="right" >3.4m</tr>
<tr >
<td >
/questions/{ids}
<td align="right" >3.0m</tr>
<tr >
<td >
/users/{ids}/questions
<td align="right" >2.9m</tr>
<tr >
<td >
/questions/{ids}/answers
<td align="right" >1.7m</tr>
<tr >
<td >
/users/{ids}/reputation
<td align="right" >1.3m</tr>
<tr >
<td >
/users/{ids}/answers
<td align="right" >1.3m</tr>
<tr >
<td >
/posts/{ids}/comments
<td align="right" >1.3m</tr>
<tr >
<td >
/answers
<td align="right" >463k</tr>
</table>

There's a precipitous drop in usage after that. It's somewhat surprising just how user centric the queries are, given how Q&A; focused Stack Exchange sites are. This suggests that user authentication to get to the tiny bit of hidden user information we have really will be a popular feature -- and that is slated for API V2.0.

Approximately **6% of API traffic is the result of internal Stack Exchange requests**.  Chat made approximately 1.1m requests, [stackexchange.com](http://stackexchange.com) made about 250k requests, and [careers.stackoverflow](http://careers.stackoverflow.com) made approximately 140k requests. Only Chat actually requires the raised API request limit that we give it.

The top applications by API usage are:

<table width="600" >
<tr >

<td >
<table width="260" >
<tr >
<td ><a href="http://stackapps.com/questions/83/stackapplet-bringing-stack-exchange-notifications-to-your-desktop-1-5-beta-2-r">StackApplet</a>
<td align="right" >5.3m</tr>
<tr >
<td ><a href="http://stackapps.com/questions/1993/newt-question-answer-and-comment-and-rep-change-notifications-for-os-x">Newt</a>
<td align="right" >5.2m</tr>
<tr >
<td ><a href="http://stackapps.com/questions/1592/stack-exchange-notifier-chrome-extension">Stack Exchange Notifier</a>
<td align="right" >3.5m</tr>
<tr >
<td ><a href="http://stackapps.com/questions/345/stackguru-a-near-realtime-bot-for-all-stackexchange-sites">StackGuru</a>
<td align="right" >1.4m</tr>
<tr >
<td ><a href="http://stackapps.com/questions/493/stackstalker-be-notified-when-your-question-is-updated-chrome-extension">Question Monitor</a>
<td align="right" >1.3m</tr>
<tr >
<td ><a href="http://chat.stackoverflow.com">Stack Overflow Chat</a>
<td align="right" >1.1m</tr>
<tr >
<td ><a href="http://stackapps.com/questions/587/new-q-google-chrome-extension-notifies-you-of-new-questions-of-interest">New Q!</a>
<td align="right" >943k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/1696/stackoverflow-notifications-in-visual-studio-2010-extension">VSCommands Lite</a>
<td align="right" >572k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/1703/so-live-live-updates-to-your-reputation-score">SO Live!</a>
<td align="right" >535k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/585/droidstack-for-android-now-with-chat-support">Droidstack</a>
<td align="right" >498k</tr>
<tr >
<td ><a href="http://www.codingclue.com/">Coding Clue</a>
<td align="right" >473k</tr>
</table>

</td>

<td >
<table width="260" >
<tr >
<td ><a href="http://stackapps.com/questions/36/stackmobile-com-view-stackexchange-sites-on-your-smartphone">StackMobile</a>
<td align="right" >443k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/518/stacktack-a-javascript-widget-you-can-stick-anywhere">StackTack</a>
<td align="right" >386k</tr>
<tr >
<td >StackMonitor
<td align="right" >356k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/2370/stackanywhere-a-stack-exchange-client-for-android">StackAnywhere</a>
<td align="right" >291k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/1699/askubuntu-add-on-for-firefox-opera-and-chrome">AskUbuntu Add-on</a>
<td align="right" >251k</tr>
<tr >
<td ><a href="http://stackexchange.com">stackexchange.com</a>
<td align="right" >251k</tr>
<tr >
<td ><a href="http://stackapps.com/questions/316/swatch-a-firefox-plugin-for-monitoring-stack-exchange-sites-for-interesting-chan">Swatch for Firefox</a>
<td align="right" >185k</tr>
<tr >
<td >DFeed IRC bot
<td align="right" >180k</tr>
<tr >
<td ><a href="http://area51.stackexchange.com">Area 51</a>
<td align="right" >142k</tr>
<tr >
<td ><a href="http://careers.stackoverflow.com">Careers</a>
<td align="right" >140k</tr>
<tr >
<td >StackTrends
<td align="right" >128k</tr>
</table>

</td>
</tr>
</table>

**Roughly 59% of all API requests are from non-web applications.** Of the top 20 applications, 8 are non-web applications.  This is of some interest with regards to the debate around HTML encoding all output by default, to ensure it is HTML safe. This suggests that there are many opportunities for script injection, although the reach of the attack is somewhat mitigated.

API usage growth is basically flat. This is not terribly surprising, since we’re read-only until API v3.0.

![](/images/wordpress/stack-exchange-api-1-1-usage-per-day.png)

Getting cache hit rates out of our logs is a bit difficult, but we’ve got an upper limit of 10% based on the numbers.  I’d say we can be confident in a 3-5% cache hit rate.

We hope these statistics are interesting, if for nothing else than learning about some useful apps that work with the Stack Exchange API that you might not have heard of. You can find out more about these apps, and discover a bunch more, at **[Stack Apps](http://stackapps.com)!** 

Stack Apps is more than an app ([and script](http://blog.stackoverflow.com/2011/02/stack-apps-and-scripts/)) directory -- there's also a comprehensive set of documentation, support, and examples for the Stack Exchange API over at Stack Apps -- and the entire API is self-documented at ...



## [api.stackoverflow.com/1.1/usage](http://api.stackoverflow.com/1.1/usage)



... with **examples you can run directly in your browser**. And naturally, it works against [every Stack Exchange site](http://stackexchange.com/sites) exactly as you'd expect!

Thanks to everyone who has built apps against our API. We'll do our best to support you, and keep evolving the API to _add more awesome_ for you.
