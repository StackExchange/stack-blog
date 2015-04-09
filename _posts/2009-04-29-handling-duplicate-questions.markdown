---
author: jeffatwood
comments: true
date: 2009-04-29 06:59:48+00:00
layout: post
redirect_from: /2009/04/handling-duplicate-questions
slug: handling-duplicate-questions
title: Handling Duplicate Questions
wordpress_id: 1153
tags:
- company
- community
- design
---


As we get more and more questions in Stack Overflow, the issue of duplicate questions becomes more pressing. The odds of any question being a duplicate, however small, increases with the total number of questions in the system. So it's worth considering: **what makes a question an exact duplicate?** As I see it, there are three classes of duplicate questions, from most clear to least clear.







  1. **Cut-and-paste duplicate questions**. These questions are the very _definition_ of exact duplicates; they are typically from users who willfully take the very same question and post it again. Either they're not satisfied with the speed of answer, or they just don't know what they're doing. We rely on Stack Overflow users to vote down these "questions" and flag them for moderator attention. These sorts of duplicates are typically deleted as soon as we see them, as they're borderline abuse of the system. They often don't get answers, so this is fairly easy to deal with. No grey area here.




  2. **Accidental duplicates**. These questions aren't copy and paste, but they cover the exact same ground as an earlier Stack Overflow question. The overlap is not ambiguous; the question uses the same words and asks the same fundamental question, with no variation at all. This is a failing on several levels; of the asker to do proper diligence before asking, of our internal ask page title search, and possibly of Google search as well. We rely on Stack Overflow users to link these questions together by closing them as "exact duplicate" and posting the URL (as a comment, or edit) to the question this is a duplicate of. These sometimes have multiple good answers attached to each question. We will use our new moderator question merge function to merge them together without losing any answers or comments.




  3. **Borderline duplicates**. These questions are ambiguous; they're in the same _ballpark_ as a previous question, but have subtle differences that may make them legitimately standalone questions. These are subject to interpretation. We rely on Stack Overflow users to tag these questions appropriately so they naturally "group" with the questions they're related to. The more tags the questions have in common, the more likely they are to show up together on the related questions sidebar. You can also edit in links to the possibly duplicated posts, if appropriate, but be sure to make the tags match so the system can figure out the relationship without as much manual effort. There's often benefit to having multiple subtle variants of a question around, as people tend to ask and search using completely different words, and the better our coverage, the better odds our fellow programmers can find the answer they're looking for.




The impending launch of the serverfault.com private beta has interrupted work on this slightly, but **better handling of accidental duplicate questions** is currently very high on our priority list. We'd like to streamline this so it's easier, with a friendly UI. (If you have ideas about what UI makes sense in this scenario, we'd love to hear it.) That said, we _have_ implemented a moderator level function to merge duplicate questions -- so if we determine two questions are accidental duplicates, we can merge them together without losing anything except the text of one of the questions; all comments and answers are preserved.



**Thanks to everyone who helps us find and eliminate duplicate questions.** We appreciate it, as do future visitors who hopefully will be able to find their answers a bit faster without excessive duplicate questions cluttering up the system. As you have time, please keep doing what I have highlighted in red, above, to help keep duplication in check!

