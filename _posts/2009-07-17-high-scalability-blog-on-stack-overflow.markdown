---
author: jeffatwood
comments: true
date: 2009-07-17 15:59:13+00:00
layout: post
redirect_from: /2009/07/high-scalability-blog-on-stack-overflow
slug: high-scalability-blog-on-stack-overflow
title: High Scalability Blog on Stack Overflow
wordpress_id: 1672
tags:
- company
- background
- server
---


It was quite an honor to see that the [High Scalability Blog posted an entry on Stack Overflow](http://highscalability.com/stack-overflow-architecture)!



We referred to the HSB, and its exhaustively detailed information about how other websites handle scaling, many times during the course of Stack Overflow development. And I've [cited it myself](http://www.codinghorror.com/blog/archives/001195.html) when researching what we think is the largest public same-stack (Microsoft) website on the internet, Plenty of Fish. It's an excellent resource.



I don't know if Stack Overflow has _that_ much traffic relative to many of the other truly giant public websites profiled on the HSB. You can see [our public Stack Overflow traffic stats at Quantcast](http://www.quantcast.com/stackoverflow.com) if you're curious. Still, it's great to be able to give back to the community and help document our own process of scaling our little corner of the web.



That said, I agree with [the overall conclusion that Todd Hoff reaches](http://highscalability.com/stack-overflow-architecture):





<blockquote>
If you need to Google scale then you really have no choice but to go the NoSQL direction. But Stack Overflow is not Google and neither are most sites. When thinking about your design options keep Stack Overflow in mind. In this era of multi-core, large RAM machines and advances in parallel programming techniques, scale up is still a viable strategy and shouldn't be tossed aside just because it's not cool anymore. Maybe someday we'll have the best of both worlds, but for now there's a big painful choice to be made and that choice decides your fate.
</blockquote>





[Scaling up is definitely a viable solution](http://www.codinghorror.com/blog/archives/001279.html), as both Plenty of Fish and we can attest.



Like all of Todd's pieces, it is _exhaustively_ researched and documented, and [well worth your time to read](http://highscalability.com/stack-overflow-architecture). I was a little stunned how thorough it was, actually -- I doubt anyone outside our core development team has thought about our design and scaling this much!

