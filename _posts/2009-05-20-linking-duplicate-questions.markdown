---
author: jeffatwood
comments: true
date: 2009-05-20 12:01:38+00:00
layout: post
redirect_from: /2009/05/linking-duplicate-questions
hero: 
slug: linking-duplicate-questions
title: Linking Duplicate Questions
wordpress_id: 1316
tags:
- company
- community
- design
---


Today's update completes another [top-rated UserVoice request](http://stackoverflow.uservoice.com/pages/1722-general/suggestions/28071-enforcing-link-to-original-exact-duplicate-question) -- making it easier to explicitly link [duplicate questions](http://blog.stackoverflow.com/2009/04/handling-duplicate-questions/) together. 



There are lots of small improvements that go with this build. We now **show the current close vote count** in the close menu, so you have some idea why the other 3k+ rep users think this question should be closed:



![question-close-votes-shown](/images/wordpress/question-close-votes-shown.png)



Remember, it takes **5** close votes from 3,000+ reputation users to close a question, but they don't all have to agree on the reason. (The reason with the most votes, however, will be shown when the question is finally closed. Yes yes, I know, you're programmers so you are immediately wondering what happens if all five votes are for five different reasons. Stop that right now!)



If you select "exact duplicate" as a reason, you'll get **a dynamic as-you-type question duplicate lookup**. You can match on any word in the title, or the actual question id number here.



![question-close-duplicate-selector](/images/wordpress/question-close-duplicate-selector.png)



If the question reaches the 5 vote close threshold, and has enough duplicate votes, it will be closed with the reason of "exact duplicate", as before. But now a revision will be automatically edited into the post, **summarizing the voted duplicate questions at the top**:



![question-close-duplicate-summary](/images/wordpress/question-close-duplicate-summary.png)



We tried to look at the existing way the community was dealing with [duplicate questions](http://blog.stackoverflow.com/2009/04/handling-duplicate-questions/) and streamline it into as few steps as possible.



Remember, in some cases we may want [duplicate questions](http://blog.stackoverflow.com/2009/04/handling-duplicate-questions/) to stick around ...





<blockquote>
There’s often benefit to having multiple subtle variants of a question around, as people <strong>tend to ask and search using completely different words</strong>, and the better our coverage, the better odds our fellow programmers can find the answer they’re looking for.
</blockquote>





... but if not, feel free to **flag for moderator attention any closed duplicates you think should be merged**. If the moderator agrees, he or she can merge the duplicates together without any loss of answers or comments.

