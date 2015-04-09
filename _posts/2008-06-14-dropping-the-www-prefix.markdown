---
author: jeffatwood
comments: true
date: 2008-06-14 04:32:24+00:00
layout: post
redirect_from: /2008/06/dropping-the-www-prefix
slug: dropping-the-www-prefix
title: Dropping the WWW Prefix
wordpress_id: 52
tags:
- company
- design
---


Where do you stand on [The Great Dub-Dub-Dub Debate](http://www.codinghorror.com/blog/archives/001109.html)?



Some people become very religious about whether URLs should have a www. prefix or not. Me, I'm a bit more sanguine: **I think you need to choose your allegiance early in the lifecycle of your website, and stick to it.**



So, for stackoverflow, we're going with plain old **stackoverflow.com**, and dropping the www prefix.



The only downside of this choice that I can see is that setting cookies for a prefixless domain sets them across all subdomains, as noted by [Stecki](http://blog.stecki.de/) in the comments of [my original blog post on this topic](http://www.codinghorror.com/blog/archives/001109.html):





<blockquote>
using a non-www-version of a webpage will lead to setting cookies for the whole domain, thus making cookieless domains (for example for fast cdn-like access of static resources like css, js and images) impossible.
</blockquote>





That's a bit of a downer, but our use of cookies should be quite minimal, so I'm OK with that tradeoff.



Now that we've chosen, we need to enforce that choice through URL rewriting. We're using IIS7 with the brand spanking new (and wildly overdue) [official Microsoft URL rewriting add-on](http://learn.iis.net/page.aspx/460/using-url-rewrite-module/).



The new rewrite GUI makes it fairly easy to set this stuff up; there's even an import option where you can pull in existing Apache format .htaccess rewrite rules, which is nice. It'd be nicer still if we could just use the .htaccess format everyone already knows, but oh well.



Here's the IIS7 rule to remove the WWW prefix from all incoming URLs. Cut and paste this XML fragment into your web.config file under <system.webServer> / <rewrite> / <rules> 




    
    
    <rule name="Remove WWW prefix" >
    <match url="(.*)" ignoreCase="true" />
    <conditions>
    <add input="{HTTP_HOST}" pattern="^www\.domain\.com" />
    </conditions>
    <action type="Redirect" url="http://domain.com/{R:1}" 
        redirectType="Permanent" />
    </rule>
    





Or, if you prefer to use the www prefix, you can do that too:




    
    
    <rule name="Add WWW prefix" >
    <match url="(.*)" ignoreCase="true" />
    <conditions>
    <add input="{HTTP_HOST}" pattern="^domain\.com" />
    </conditions>
    <action type="Redirect" url="http://www.domain.com/{R:1}"
        redirectType="Permanent" />
    </rule>
    





You can also use the GUI to build these rewrite rules; same thing either way.



For reference, here's what the enforce-www rule looks like in .htaccess form.




    
    
    # Add WWW prefix
    RewriteCond %HTTP_HOST ^domain\.com [I]
    RewriteRule ^/(.*) http://www.domain.com/$1 [RP]
    





Have I mentioned [how much I love XML?](http://www.codinghorror.com/blog/archives/001114.html)

