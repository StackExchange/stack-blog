---
author: alex
comments: true
date: 2011-11-02 19:00:15+00:00
layout: post
redirect_from: /2011/11/se-podcast-25-mark-russinovich
hero: /images/category/podcasts.jpg
slug: se-podcast-25-mark-russinovich
title: 'SE Podcast #25 - Mark Russinovich'
wordpress_id: 10095
tags:
- company
- podcasts
podcast: http://www.podtrac.com/pts/redirect.mp3/feeds.soundcloud.com/stream/26994881-stack-exchange-stack-exchange-podcast-25.mp3
---

This week's guest is [Mark Russinovich](http://en.wikipedia.org/wiki/Mark_Russinovich), from [SysInternals.com](http://technet.microsoft.com/en-us/sysinternals) and now with Microsoft.



	
  * Chatrooms are chaotic! Jeff mentions that [lots of spaces](http://www.reddit.com/) need editorial oversight. A lot of good information is available, but it's a hard to find it in the disorganizations. It's a chronic problem.

	
  * Mark and Joel talk about his command-line work. Mark had to reverse-engineer this stuff, almost from scratch. [SoftICE](http://en.wikipedia.org/wiki/SoftICE) was effectively a device driver that took control away from the OS, when it was active. Mark's become famous for being a Microsoft hacker (yes they exist) and for his work with rootkits, the problems with which are becoming an epidemic.

	
  * Mark started outside of Microsoft, but later his company was acquired by them. He's worked on Vista, Windows 7, and a bit of Windows 8, but is now on [Windows Azure](http://en.wikipedia.org/wiki/Azure_Services_Platform). For Azure, an OS for data centers, Mark works for the fabric controller team. Like the kernel in Windows, this defines processes and consumes application xml. Basically, he's all up and down the stack. One of their biggest concerns is upping consistency, to make Azure the best in the industry.

	
  * One of the project's other goals is to have a virtual machine deploy in less than 5 minutes, and update in 2 minutes or less. Right now, those times are 8-9 minutes at the 50th percentile. They're pursuing a variety of tactics to optimize the boot process. There are lots of moving parts to optimize. It's a fun project, and it's all new.

	
  * Not that many companies can deploy a cloud operating system at such a scale. Investment is expensive, although, as Jeff points out, machines today are more powerful than ever before. Still, although [Stack Overflow is ranked #180](http://www.quantcast.com/p-c1rF4kxgLUzNc), getting to #150 requires four times the traffic. Mark points out that yes, you can manage the servers yourself, make the investment, figure out all the parts, and so forth. Or, in nine minutes, you can upload your webapp to the cloud and pay only for what you use.

	
  * The cloud is best for companies who have traffic in bursts and periodic traffic. Companies where, say, there's a known holiday shopping rush or other specific types of workload patterns. By contrast, Stack Overflow's traffic is weirdly predictable. Mark notes that the other benefit to cloud computing is replication; if a disk fails (as 3-5% of them do annually) your data is cloned across the country.

	
  * Mark wrote a novel: [Zero Day](http://www.amazon.com/Zero-Day-Novel-Mark-Russinovich/dp/031261246X%3FSubscriptionId%3DAKIAIIBINOD46VC3JCLQ%26tag%3Dstackoverfl08-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D031261246X), which was published in March. It's a cyber thriller based around a cyber terrorism plot to bring down parts of the world using malware. It's readable and got lots of verisimillitude. The sequel, _Trojan Horse_ is set to come out next fall.

	
  * Right now, while direct attacks are less common, spear-phishing (targeted [phishing](http://en.wikipedia.org/wiki/Phishing) attacks) and good old exploitation of vulnerabilities in a system are still serious threats.

	
  * Jeff talks about the back-and-forth about putting anti-virus software on our servers. On the one hand, it's absolutely necessary, especially as Careers 2.0 has users uploading resumes and CVs onto the server. On the other hand, [mention "anti-virus" in a Linux room](http://unix.stackexchange.com/questions/2751/the-myths-about-viruses-in-unix-linux) and be prepared to get laughed out. There's also a serious performance question there.

	
  * Everyone should go [implement 2-step verification](http://googleblog.blogspot.com/2011/02/advanced-sign-in-security-for-your.html) on their email accounts (Gmail account!) _right now_. Well? Go! Do it now! We'll wait.

	
  * Mark says he would separate his password into tiers, with the top tier being ecommerce sites. Jeff says that this is part of why he's been pushing for third-party sign-ins, where the third party isn't a bunch of idiots. Mark believes we are converging towards this naturally, with the proliferation of Google and Facebook sign-ins.

	
  * Joel wonders if maybe there just aren't that many malevolent people in the world. Mark quickly counters with Facebook's admission that [600k logins are compromised daily](http://nakedsecurity.sophos.com/2011/10/28/compromised-facebook-account-logins/).

	
  * He also points out that while our security is better (compare XP to Vista or 7's security hardening) the attacks are more sophisticated than ever. Just look at [Stuxnet](http://en.wikipedia.org/wiki/Stuxnet).

	
  * Be sure to check out our [Security](http://security.stackexchange.com/) and [Writers](http://writers.stackexchange.com/) sites. They're awesome!


Next week's guest is [Chris "moot" Poole](http://en.wikipedia.org/wiki/Christopher_Poole), from [4chan](http://www.4chan.org) and [Canvas](http://www.canv.as).

<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/26994881&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
