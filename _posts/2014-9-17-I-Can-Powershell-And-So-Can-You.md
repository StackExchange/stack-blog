---
layout: post
title: I Can Powershell and So Can You!
author: selfcommit
hero: /blog/images/window.jpg
source: http://www.selfcommit.com/
category: engineering
tags: scripting
---
Often automating a task is [not worth the time](http://xkcd.com/1205/) and rarely takes [the time intended.](http://xkcd.com/1319/) I work at [Stack Exchange](http://www.stackexchange.com/), where we have lots of people on our team and in our community that are [amazing at Powershell](http://stackoverflow.com/tags/powershell/hot).
**I am not one of those people**

#Is it possible to save time using Powershell, even if you're not a guru?
<br>
**Sure!**

<h3><span style="font-size: large;">Framing the Problem</span></h3>
My team is partially responsible for managing our [Google Apps for Work](http://www.google.com/enterprise/apps/business/) instance.  Google Apps for Work includes a great tool for linking your existing Active Directory structure to your Google Accounts. That tool,<a href="https://support.google.com/a/answer/106368?hl=en" target="_blank">Google Apps Directory Sync</a>(GADS) allows a company to sync Active Directory Users and Groups with Google email accounts and mailing lists. We already sync our users with email addresses, but my task is to also link our security groups with email distribution lists.

<br />
In a fresh environment, this would be incredibly easy. However, we have a number of mailing lists that exist on the "Google side" that don't have matching security groups in AD. This issue is compounded because when group sync is enabled in GADS, any group that does not match an AD group will be deleted on the Google side*. 
<h3>
<span style="font-size: large;">Steps to resolve the problem:</span></h3>
</div>
<div>
<ol>
<li>Match existing AD Security Groups to Google mailing lists.</li>
<li>Generate AD Security Groups that don't exist for matching Google mailing lists.</li>
<li>Populate the AD Security Groups with the correct users</li>
</ol>

If you're familiar with GADS, you'll know #1 is pretty easy. Using an AD filter we can [match groups in our AD structure](https://www.google.com/support/enterprise/static/gapps/docs/admin/en/gads/admin/config_group_sync.html) to existing Google Groups.  The only concern here is to make sure that the AD groups actually have the same users as the existing Google group, since no sync has occurred previously.
<br>
The second issue, Generating AD Security Groups that don't exist as mailing lists, poses a problem.  Running a simulated Sync on GADS shows **80 Google Groups** without a matching AD distribution group.  Some of those groups have 100+ members. (Done by hand, That's quite a few clicks...)

<br>
<div>
This is our first opportunity to use Powershell to solve our problems. </div>
<br />

I start by grabbing a list of groups that arn't in AD. GADS simulated Sync logs those groups in a way that is easily copy/pasted into a nice CVS file.</div>
<br>

<div class="separator" style="clear: both; text-align: center;">
<a href="http://4.bp.blogspot.com/-Pmb4Odbat8k/VBj_pFaGwrI/AAAAAAAAE0k/ytn4GoF_Qgo/s1600/copy-csv.gif" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" src="http://4.bp.blogspot.com/-Pmb4Odbat8k/VBj_pFaGwrI/AAAAAAAAE0k/ytn4GoF_Qgo/s1600/copy-csv.gif" height="308" width="640" /></a></div>
<h3>
<br>
Now that we have the groups we can get them into AD:</h3>
<ul>
<li>Read the CSV into powershell</li>
<li>For each group, generate a security group with matching name.</li>
</ul>
<div>
<h4><i>"BUT I DONT KNOW HOW TO DO THAT IN POWERSHELL!"</i></div></h4>
</div>
<div>
That's ok. Lets use our minimal knowledge, and Google to figure out how.</div>
<div>
A quick Google search shows a Technet article on<a href="http://technet.microsoft.com/en-us/library/ee176874.aspx" target="_blank">Import-CSV</a>. Reading Microsoft Technet articles is an art all its own. These articles provide lots of in depth information on Import-CSV. While more information is GREAT, we're trying to Get Things Done. Let's CTRL+ F to find relevant examples:</div>
<div class="separator" style="clear: both; text-align: center;">
</div>
<div>
<br /></div>
<div class="separator" style="clear: both;">
<a href="http://3.bp.blogspot.com/-1bdYBYACh2A/VBhwbOdYh2I/AAAAAAAAEzo/GdbgxGQvFC4/s1600/Import_csv.gif" imageanchor="1" style="clear: left; float: left; margin-bottom: 1em; margin-right: 1em;"><img border="0" src="http://3.bp.blogspot.com/-1bdYBYACh2A/VBhwbOdYh2I/AAAAAAAAEzo/GdbgxGQvFC4/s1600/Import_csv.gif" height="569" width="640" /></a></div>
<div class="separator" style="clear: both;">
<br /></div>

We quickly isolate the example CSV import. By dumping that import into a variable ($csv) we now have an object Powershell can manipulate. Following a similar search and CTRL+ F for<a href="http://technet.microsoft.com/en-us/library/ee617258.aspx" target="_blank">New-ADGoup</a>we end up a short script:

<script src="https://gist.github.com/selfcommit/1781985ae311dda7b02e.js"></script>

#So Close.. But wait there's more!

Problem 1 and 2 are resolved, but we still need to populate those AD groups. Many of the groups only have a few users, and are easily updated using the build in Active Directory Interface. Some groups are larger. So large that the existing AD interface would require **hundreds**, or even **thousands** of clicks. If you think that's too many clicks, you'd be right.

<h4>Powershell can help!</h4>

Just as before, GADS simulated sync will return a list of users effected by a planned sync. We can again pull that list of users into a CSV.  Lets modify our existing Powershell script to populate AD groups.We match on email address, not AD username, so we need to find the AD user with a matching email address, and add them to the correct group.<a href="http://technet.microsoft.com/en-us/library/ee617241.aspx" target="_blank">Get-ADUser</a> has a filter option, which accepts a string. If we set the email address provided by GADS as the filtered string, we should always get the user we want.
<br>


<script src="https://gist.github.com/selfcommit/696d2a45593313044dde.js"></script>

My own workflow involves 
-Grabbing a single set of usernames and dumping them into a CSV
-I name that CSV after the security Group I intend to populate.
-Defining my path with the string on line 1 means I change only 1 variable for each group I add.
<br>
I hope my first career as a teacher dosen't bleed through too much on this post. Powershell can be fun, and with a bit of effort save considerable time. 

*After some research I found a way to have GADS ignore certains groups in Google for Work, but if I had found that earlier we wouldn't have this fun post!