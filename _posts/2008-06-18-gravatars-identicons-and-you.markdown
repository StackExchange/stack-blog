---
author: jeffatwood
comments: false
date: 2008-06-18 06:59:24+00:00
layout: post
redirect_from: /2008/06/gravatars-identicons-and-you
hero:
slug: gravatars-identicons-and-you
title: Gravatars, Identicons, and You
wordpress_id: 53
tags:
- company
- design
---


We want Stack Overflow* users to be able to personalize their questions and answers with a small picture -- even if they've never created an account on our site. Rather than build this functionality ourselves, we've decided to take advantage of [Gravatars](https://www.gravatar.com/). Gravatars are small images associated with your email address. 



I've used Gravatar for a while myself, and over time I've really grown to appreciate their approach:







  1. **They're global**. They work across every website that supports gravatars. Sign up once, benefit everywhere.
  


  2. **They're easy**. It's totally straightforward; you simply build a URL that contains a hash of your email address (or IP address, if you didn't provide email) add a few mostly optional preferences in the querystring, and that's it. 
  


  3. **They're safe**. The Gravatar service vets the images so nothing, er.. disturbing.. shows up in your browser. You can specify whether you want a maximum rating of G, PG, R, or X for gravatars displayed on your site. We're going with PG; I hope you guys and gals can handle that kind of _intensity_.
  


  4. **It does one thing**. Gravatar isn't about social networking, mp3s, news, or any mashups thereof. It's trying to solve one tiny problem on the web with laser-like focus: providing a web-friendly Globally Recognized Avatar for you across all the websites you visit. It's almost a single serving website, and I say that with the utmost respect. So many websites fail because they try to do everything and be everything.




**I highly recommend [signing up for Gravatar](http://en.gravatar.com/site/signup/)**. It's totally painless. Once you do, your image will show up automatically in the comments here, and on any questions or answers you post to Stack Overflow, too. I think you'll be surprised how many places on the web start to associate your Globally Recognized Avatar with the simple entry of your email address in a form. Satisfaction guaranteed, or your money back! 



Another neat (and recently added) feature of Gravatars is a fallback. If someone doesn't want to sign up for Gravatar --  and hey, we're totally cool with that, we don't judge -- Gravatar will render an [Identicon](http://en.wikipedia.org/wiki/Identicon) for them automatically.



**What are Identicons?** Well, they're [a sort of digital fingerprint](http://haacked.com/archive/2007/01/22/Identicons_as_Visual_Fingerprints.aspx) -- a visual glyph that represents your IP address. Everyone stores IP addresses internally, but it's considered borderline rude on today's web to out someone's IP address when they post content somewhere. The identicon is a way of showing the IP address without _showing_ their IP address. Knowwhatimean?



![identicon-samples](/images/wordpress/identicon-samples.png)



Plus, they're kind of mesmerizingly beautiful. To me, anyway.



If you want to be totally anonymous, don't worry. You still are. Or as much as you can be on the web, anyway. You'll still get a unique image (on individual websites; it's hashed per-site) associated with your content in the form of that Identicon -- so we can know it was really you, Mr. Anonymous, and not another anonymous user _pretending_ to be you. Well, assuming you always post from the same IP address, anyway.



If you're interested in [implementing Gravatars](http://en.gravatar.com/site/implement) in your software or website, it's dead easy. Here's the code (yep, _actual code!_ We are actually building this thing, believe it or not!) which renders the Gravatar for us.




    
    
    const int size = 64;
    const string maxrating = "PG";
    const string gurl = "https://www.gravatar.com/avatar/";
    
    var e = new UTF8Encoding();
    var md5 = new MD5CryptoServiceProvider();
    
    var sb = new StringBuilder(256);
    sb.Append(gurl);
    byte[] b;
    if (String.IsNullOrEmpty(this.Email))
    {
        b = md5.ComputeHash(e.GetBytes(r.IPAddress));
    }
    else
    {
        b = md5.ComputeHash(e.GetBytes(this.Email));
    }
    for (int i = 0; i < b.Length; i++)
    {
        sb.Append(b[i].ToString("X2").ToLower());
    }            
    sb.Append("?s=" + size.ToString());            
    sb.Append("&d;=identicon");
    sb.Append("&r;=" + maxrating);           
    return sb.ToString();
    





See? Easy. 



* I've decided "Stack Overflow" is the preferred spelling and capitalization, since someone asked in the comments. Unless you're referring explicitly to the website URL, then use stackoverflow.com.
