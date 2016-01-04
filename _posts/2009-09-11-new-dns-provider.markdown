---
author: jeffatwood
comments: true
date: 2009-09-11 23:34:55+00:00
layout: post
redirect_from: /2009/09/new-dns-provider
hero: 
slug: new-dns-provider
title: New DNS Provider
wordpress_id: 1954
tags:
- company
- background
- server
---


Our domain name registrar is GoDaddy. We've had a lot of problems with GoDaddy's handling of DNS, where DNS entries will suddenly appear and disappear at random. Often, changing a completely unrelated DNS record would result in other DNS entries going missing for hours. Extremely frustrating.



As a result of many, many bad experiences, over the weekend, we'll be switching DNS providers. I asked around about quality DNS providers and I got a few consistent recommendations:







  * [EasyDNS](http://www.easydns.com/)

  * [ZoneEdit](http://www.zoneedit.com/)

  * [DynDNS](http://www.dyndns.com/) / [Dynect](http://www.dynect.com/)

  * [UltraDNS](http://www.ultradns.com/)

  * [DNSMadeEasy](https://www.dnsmadeeasy.com/)

  * [EveryDNS](http://www.everydns.com/)




I was also (hilariously) referred to a Server Fault question on [Hosting Your Own DNS](http://serverfault.com/questions/23744/hosting-your-own-dns). The entire [DNS tag on Server Fault](http://serverfault.com/questions/tagged?tagnames=dns&sort=votes) is good reading as well.



We eventually decided to go with [Dynamic Network Services](http://dynamicnetworkservices.com/).



[![dynect-uptime](https://i.stack.imgur.com/hh9UG.png)](http://dynamicnetworkservices.com/)



They must know DNS cold, because they have [a freaking three letter domain name](http://dyn.com/), man!



I also got to learn the exciting intricacies of exporting DNS records to text format, including [the thrilling Start of Authority (SOA) record](http://www.zytrax.com/books/dns/ch8/soa.html).




    
    
    example.com.    IN    SOA   ns.example.com. hostmaster.example.com. (
                                  2003080800 ; sn = serial number
                                  172800     ; ref = refresh = 2d
                                  900        ; ret = update retry = 15m
                                  1209600    ; ex = expiry = 2w
                                  3600       ; min = minimum = 1h
                                  )
    





Starting at 5 pm PST today, we'll flip over to the new nameservers:




    
    
    ns1.p19.dynect.net
    ns2.p19.dynect.net
    ns3.p19.dynect.net
    ns4.p19.dynect.net
    





It is our hope that outsourcing our DNS to professionals -- to companies that specialize in this stuff -- will result in less unpredictability when navigating to our websites.

