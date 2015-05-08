---
author: alex
comments: true
date: 2011-08-17 15:00:04+00:00
layout: post
redirect_from: /2011/08/the-se-podcast-setup
hero: /images/wordpress/Whole-Setup-1024x403.jpg
slug: the-se-podcast-setup
title: The SE Podcast Setup
wordpress_id: 9049
tags:
- company
- podcasts
---

We've gotten quite a few questions from people about how we go about recording and producing the Stack Exchange podcast from people interested in everything from the hardware to the software and even the process.  Given the recent revamp of the entire setup (which has been happening during our recent break from live shows), I figured this was the perfect time to do it.

Our setup is massively more complex than what is normally needed for a podcast (since its normally 2 people sitting in a room talking into mics).  We generally have 2-3 people live in studio (Joel, Alex and maybe 1 guest), plus an additional 2-3 (Jeff, the guest, and sometimes a second guest) who all need to be mixed and recorded separately.   Because of that, we can't do one big Skype call and just record that, everyone has to be called individually and then mixed through our audio board.



## The Equipment



_Audio Mixer:_ [Yamaha 01v96](http://www.yamahaproaudio.com/products/mixers/01v96/index.html) w/ [MY8-DA96 Card](http://www.yamahacommercialaudiosystems.com/product_detail.php?prodID=1070) - the heart of the entire setup - the v96 is a 12 input digital board with all of our DSP, FX and routing built right into it.  The MY8 card gives us an additional 8 outputs so we can generate enough mix-minus feeds to send to all of the hosts and guests.

_Studio Mic's:_ [EV RE-20](http://www.electrovoice.com/product.php?id=91), [Audio-Technica AT-4040](http://www.audio-technica.com/cms/wired_mics/9b6aac05c5aca887/), [AKG C1000S](http://www.akg.com/site/products/powerslave,id,759,pid,759,nodeid,2,_language,EN.html) - We keep several different mics in the studio for different applications (there's a rationale behind all of them) but generally speaking Joel uses the RE-20, Alex uses the C1000S and the AT-4040 is for guests

_Headphones:_ [Sony MDR-7506](http://pro.sony.com/bbsc/ssr/product-MDR7506/) - The workhorse headphones of audio engineers and studios - you can literally go into any studio in the world and find at least one pair of these

_Audio Interfaces:_  [Focusrite Saffire Pro24 ](http://www.focusrite.com/products/audio_interfaces/saffire_pro_24/) - 16 ins and 8 outs means this guy has more than enough I/O for all our applications.  Its got great build quality though and the number of I/O options (XLR, 1/4", SPDIF, ADAT, MIDI) means we can buy multiples of this one unit and use it for all our applications

_Remote Computers:_ [Mac Mini](http://www.apple.com/macmini/) - amazing computers for a variety of reasons, but given their size, integrated power supplies, dual video outputs, and firewire ports, they fit the bill perfectly

_Streaming Computer:_ [Dell Desktop](http://www.dell.com) - stocked with a quad-core processor and 8 gigs of RAM, it's got plenty of power for creating our live stream and misc. other production tasks

_Recording Computer:_ [Mac Pro](http://www.apple.com/macpro/) - An extra computer we had around the office that was re-purposed for recording.  It's spec'd similarly to the Dell desktop and takes all the inputs from the mixer to record for later editing

_Camera:_ [Microsoft LifeCam Cinema](http://www.microsoft.com/hardware/en-us/p/lifecam-cinema) - Small, easy to place and 720p capable

_Monitors_: Various [Dell UltraSharp LCDs](http://www.dell.com/content/topics/topic.aspx/global/products/landing/en/ultrasharpmonitor?c=us&l=en&cs=04) - Great quality and well priced make these monitors a great choice, but the main thing is that we had a few extras laying around the office



## The Setup



There's 2 main areas that make up the podcast, the remote connections and the production section

[![](/images/wordpress/Whole-Setup-1024x403.jpg)](/images/wordpress/Whole-Setup.jpg)[
](http://blog.stackoverflow.com/wp-content/uploads/Whole-Setup.jpg)



### Remote



The computers that pull in Jeff and any of our remote guests.  To be ready for situations where everyone is remote (such as Episode 5) we needed capability for 4 remote callers.  The entire setup consists of four mac minis, four audio interfaces, a network switch, and KVM all crammed into a 4u rack.  Each mac-mini is linked to an audio interface which then connects to the mixer.
There's also a headphone amp that sits on top of the rack, but that's just because its convenient - it's technically part of the production section and serves to feed the guest's headphones along with anyone watching live in studio.
[![](/images/wordpress/Remote-Unit-255x300.jpg)](/images/wordpress/Remote-Unit.jpg)





### Production



The center of the production section is obviously the 01v96 mixer.  It takes inputs from the three studio mixes and four remote feeds, creates mix-minus feeds for everyone, and then distributes those feeds.  The program audio is then fed via SPDIF to the streaming computer (through an [M-Audio Fastrack Pro](http://www.m-audio.com/products/en_us/FastTrackPro.html)) and direct feeds for each of the speakers is fed via [optical ADAT](http://en.wikipedia.org/wiki/ADAT_Lightpipe) to the Mac Pro (via a Focusrite unit) for individual recording and later editing.

The streaming computer also has the Microsoft LifeCam connected to it and is running [Livestream Procaster](http://www.livestream.com/platform/procaster) which encodes the audio and video into three separate feeds (a 300 kbps low/mobile, a 700 kbps medium, and an 1800 kbps HD).  Amazingly, generating these three feeds consumes most of the computer's resources with CPU utilization often topping 80% (despite being a 3.2ghz quad-core machine).

The recording computer runs [Reaper](http://www.reaper.fm/). a highly flexible and very affordable DAW program.  We originally started using Reaper when we needed something that could create mix-minus feeds in software and then output them (it was the only thing we found that would) and loved it so much that we've stuck with it.  The eight inputs are fed in and recorded for later editing before being posted.



## The Process



The first step for every show is booking a guest - we have a big list of possible guests who we regularly keep in touch with and add to the schedule whenever they're available.  In advance of every show, we send guests a [Plantronics Audio 655](http://www.amazon.com/Plantronics-Audio-655-USB-Multimedia/dp/B001SEQN3K/ref=cm_cr_pr_product_top) headset - it's a solid (and affordable) headset with great sound.  Most importantly, its consistent, so we know that there won't be headset problems the day of the show.  We also typically do an audio test several days in advance to make sure everything is working and sounding good.

The day of the show, setup starts about 2pm - gear is checked over and we start up the [live stream](http://www.livestream.com/stackexchange) around 2:30 or 3:00.  We do a final audio check with the guests 30 minutes before show and then we're live!  After the show ends, the clean recordings are dumped onto my computer where they are processed and edited into the final episode.  That file is uploaded to our distribution points ([SoundCloud](http://soundcloud.com/stack-exchange) & [IT Conversations](http://itc.conversationsnetwork.org/series/stackexchange.html)) on Wednesday mornings along with the show notes (which are typically written Tuesday evening after the show).  The full posts are then published Wednesday @ 3pm ET / 12pm PT.

If you've got any questions that weren't covered in this post, go ahead and add them in the comments and I'll do my best to answer them and add them to the post.
