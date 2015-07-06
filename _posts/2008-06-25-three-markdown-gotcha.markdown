---
author: jeffatwood
comments: true
date: 2008-06-25 05:24:08+00:00
layout: post
redirect_from: /2008/06/three-markdown-gotcha
slug: three-markdown-gotcha
title: Three Markdown Gotchas
wordpress_id: 60
tags:
- company
- design
---


I've enjoyed working with the excellent WMD "what you see is what you mean"  [Markdown control](http://blog.stackoverflow.com/2008/05/potential-markup-and-editing-choices/) while building Stack Overflow. I've been very pleasantly surprised how easy it is to type a smattering of concise [Markdown](http://en.wikipedia.org/wiki/Markdown) and generate rather nice-looking content.



One of Markdown's biggest advantages is its simplicity. Here's a little Markdown test post I've been using that exercises the basic formatting options:




    
    
    ##Header##
    
    ----------
    
    Some **bold** Some *italic* and [a link][1] 
    
    A little code sample
    
        </head>
        <title>Web Page Title</title>
        </head>
    
    A picture
    
    ![alt text][2]
    
    A list
    
    - apples
    - oranges
    - eggs
    
    A numbered list
    
    1. a
    2. b
    3. c
    
    A little quote
    
    > It is now time for all good men to come to the aid of their country. 
    
    A final paragraph.
    
      [1]: http://www.google.com
      [2]: http://www.google.com/intl/en_ALL/images/logo.gif
    





However, I've also noticed **there are a few edge cases where Markdown syntax can get weird and produce unexpected results**. 



I started to wonder if there were other edge conditions in advanced Markdown syntax I should know about. I figured John Fraser of [AttackLab](http://attacklab.net/), the author of the WMD control, would be the best person to ask. He was kind enough to respond in some detail, and granted permission for me to repost his thoughts, where he outlines three gotchas to worry about when using Markdown:





>
**1) Markdown's single biggest flaw is its intra-word emphasis.**

> 
> 
I don't think anybody writes:

> 
> 
`un*fricking*believable`

> 
> 
often enough to justify making it nearly impossible to talk about tokens with underscores in them: 

> 
> 
`some_file_name`

> 
> 
is interpreted as:

> 
> 
`some<em>file</em>name`

> 
> 
It even works across word boundaries:

> 
> 
`file_one and file_two`

> 
> 
becomes:

> 
> 
`file<em>one and file</em> two`

> 
> 
Whenever you're writing tokens with underscores you have to make absolutely sure you're in a `code span`. The same problem will also nail you on equations like a*b*c, but that seems to pop up less frequently.

> 
> 
Showdown follows the reference implementation on all this, but in WMD I do a little preprocessing to hack the idiocy away: basically I just backslash-escape any underscores or asterisks that might trigger it.  It's a flagrant violation of the standard, but since it's a pre-pass that should produce identical output with any Markdown processor, I feel justified.  Unfortunately my hack did screw up one edge case (which I don't have in front of me) and there isn't any way to disable it.  Both those things will change in the next release.

> 
> 
**2) List items only nest if they cross a magical four-character boundary**.

> 
> 
So:

> 
> 

>     
>     
>     - level 1
>       - level 2
>         - level 3
>           - level 4
>             - level 5
>               - level 6
>     
> 
>         

> 
> 
is interpreted as:

> 
> 

>     
>     
>     - level 1
>         - level 2
>         - level 2
>             - level 3
>             - level 3
>                 - level 4
>     
> 
> 

> 
> 
Which can be pretty surprising to humans.  I've suggested an alternative algorithm a [couple](http://six.pairlist.net/pipermail/markdown-discuss/2007-July/000690.html) of [times](http://six.pairlist.net/pipermail/markdown-discuss/2008-March/001076.html) but it looks like neither of the big implementors is interested. (The mailing list's HTML archive strips the whitespace from that first link; do "View Source" to make it make sense.)

> 
> 
**3) Mixing HTML and Markdown has a couple of serious limitations.**

> 
> 
You can put Markdown within inline elements:

> 
> 

>     
>     
>     <span>This *will* work.</span>
>     
> 
> 

> 
> 
but not within block elements:

> 
> 

>     
>     
>     <div>
>       This *won't* work.
>     </div>
>     
> 
> 

> 
> 
I think this is a symptom of Markdown's being designed for blog posts.  You can paste in big chunks of foreign HTML verbatim without having to double-check them, but it's pretty much impossible to write whole pages in Markdown. Again Gruber's [not interested](http://six.pairlist.net/pipermail/markdown-discuss/2007-March/000569.html); dunno about Fortin.

> 
> 
In my mind, this last one is huge.  If we allowed Markdown within block-level HTML, we could write a non-lossy version of [html2text](http://www.aaronsw.com/2002/html2text/) and make my dream of Markdown as a transient editing format a reality.

>
> Oh, also?  The HTML parser is pretty broken, so what gets recognized as a complete block of HTML can sometimes be surprising.  But Showdown uses an older, even-more-broken algorithm than the latest Markdown.pl beta, so I probably shouldn't point fingers.






Remember, if you don't like Markdown, you can always fall back to HTML -- at least the whitelisted HTML. And if you're curious about how any of this works I strongly encourage you to head over to the [WMD advanced demo sandbox](http://wmd-editor.com/examples/splitscreen) and **try it out for yourself**.

