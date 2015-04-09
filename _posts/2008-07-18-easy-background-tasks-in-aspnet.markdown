---
author: jeffatwood
comments: true
date: 2008-07-18 16:51:53+00:00
layout: post
redirect_from: /2008/07/easy-background-tasks-in-aspnet
slug: easy-background-tasks-in-aspnet
title: Easy Background Tasks in ASP.NET
wordpress_id: 70
tags:
- company
- background
---


As I work on the badge implementation for Stack Overflow, I needed a way to call the code that detects and awards the badges out of band. Traditionally this is done by something like `cron` or scheduled tasks. I'd rather have the code stay inside our current codebase, though.



I asked on Twitter and got some good responses, everything from "write a service" to "use threads". I also got a link to [Simulate a Windows Service using ASP.NET to run scheduled jobs](http://www.codeproject.com/KB/aspnet/ASPNETService.aspx). Now this is interesting -- it's just simple enough to work:







  1. At startup, add an item to the `HttpRuntime.Cache` with a fixed expiration.

  2. When cache item expires, do your work, such as `WebRequest` or what have you.

  3. Re-add the item to the cache with a fixed expiration.




The code is quite simple, really:




    
    
    private static CacheItemRemovedCallback OnCacheRemove = null;
    
    protected void Application_Start(object sender, EventArgs e)
    {
        AddTask("DoStuff", 60);
    }
    
    private void AddTask(string name, int seconds)
    {
        OnCacheRemove = new CacheItemRemovedCallback(CacheItemRemoved);
        HttpRuntime.Cache.Insert(name, seconds, null, 
            DateTime.Now.AddSeconds(seconds), Cache.NoSlidingExpiration,
            CacheItemPriority.NotRemovable, OnCacheRemove);
    }
    
    public void CacheItemRemoved(string k, object v, CacheItemRemovedReason r)
    {
        // do stuff here if it matches our taskname, like WebRequest
        // re-add our task so it recurs
        AddTask(k, Convert.ToInt32(v));
    }
    





Works well in my testing; badges are awarded every 60 seconds like clockwork for all users. 

