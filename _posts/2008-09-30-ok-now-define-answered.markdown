---
author: jeffatwood
comments: true
date: 2008-09-30 07:05:12+00:00
layout: post
redirect_from: /2008/09/ok-now-define-answered
hero: 
slug: ok-now-define-answered
title: OK, Now Define "Answered"
wordpress_id: 106
tags:
- company
- design
---


One thing we've learned on Stack Overflow is that asking questions is easy. **But how do you tell when a question has been _answered?_**



For a community predicated on the value of getting answers to your programming questions, it's sort of... important... to know when unanswered questions are hanging around out there in the ether.



![riddler](/images/wordpress/riddler.png)



We do provide a facility for the person who asked the question to mark an answer as an "accepted" answer. Once accepted, the answer is tagged with a checkmark and a special background color, and **permanently docked to the bottom of the question.** This is a simple social convention we use to close the loop between the person asking and the person answering -- with a little reputation sugar to sweeten the deal (+15 to the answer, and +2 to the owner). **Accepting an answer is not meant to be a definitive and final statement indicating that the question has now been answered perfectly**. Heck, we don't even expect people asking questions to come back and accept an answer most of the time.



Just between you and me, not all question askers are equipped to recognize the best answer to their question anyway -- that's where community voting comes in. That's why in the default sort order (votes), the answer the community likes best will be either:







  1. Directly under the question

  2. Directly under the accepted answer, if there is an accepted answer




This is how Stack Overflow works -- the good stuff gets voted to the top, so you never have to read down very far to get the best information. And for the most part, it _does_ work!



However, we still need a way to get to questions that, for whatever reason, aren't being answered. Initially our [unanswered questions view](http://stackoverflow.com/questions?sort=answers) included **questions with zero posted answers**.



That didn't work too well, as some questions could have multiple answers posted that weren't ... satisfactory. They'd disappear from the unanswered questions view, but these questions weren't truly "answered" in any real sense.



Some people proposed showing all questions without any accepted answers, but that's contorting a simple social convention into far more than it was meant to be. Expecting every asker to come back and mark an accepted answer is totally unrealistic. There would be tens of thousands.



As of today, here's how we do it:







  * **Answered questions** have at least one answer with one upvote (or accepted)

  * **Unanswered questions** have no answers with upvotes (or accepted)




More complex solutions have been proposed. We could potentially tweak the number of upvotes required for this to work -- but I'm thinking this is a lot better way to measure "answered" than the way we used to do it.



So if you were wondering why [the number of "unanswered" questions](http://stackoverflow.com/questions?sort=answers) just went from barely a hundred to nearly two thousand, this is why.

