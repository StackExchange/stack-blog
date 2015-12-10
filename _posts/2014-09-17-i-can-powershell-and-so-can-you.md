---
layout: post
title: I Can Powershell and So Can You!
author: selfcommit
hero: https://i.stack.imgur.com/Ci8hT.jpg
source: http://www.selfcommit.com/
tags:
- engineering
- development
- scripting
---

Often automating a task is [not worth the time](http://xkcd.com/1205/) and rarely takes [the time planned](http://xkcd.com/1319/).  At StackExchange we have lots of people on our team and in our community [who are amazing at Powershell](http://stackoverflow.com/tags/powershell/hot). **I am not one of those people.**

*Is it possible to save time using Powershell, even if you're not a guru?* **Sure!**

#Framing the Problem
At Stack we use [Google Apps for Work](http://www.google.com/enterprise/apps/business/).  Google Apps for Work includes a great tool for linking your existing Active Directory structure to your Google Accounts.  That tool, [Google Apps Directory Sync](https://support.google.com/a/answer/106368?hl=en) (GADS) allows a company to sync Active Directory Users and Groups with Google email accounts and mailing lists.  We already sync our users with email addresses, but my task is to also link our security groups with email distribution lists.  

![](http://i.imgur.com/s8lWuF5.png)

In a fresh environment, this would be incredibly easy.  However, we have a number of mailing lists that exist on the "Google side" that don't have matching security groups in AD.  This issue is compounded because when group sync is enabled in GADS, any group that does not match an AD group will be deleted on the Google side.  As a friend put it:

**We need to attach a trailer to a moving vehicle.**

#Steps to resolve the problem:
1. Match existing AD Security Groups to Google mailing lists.
2. Generate AD Security Groups that don't exist for matching Google mailing lists.
3. Populate the AD Security Groups with the correct users

If you're familiar with GADS, you'll know #1 is pretty easy.  Using an AD filter we can [match groups in our AD structure](https://www.google.com/support/enterprise/static/gapps/docs/admin/en/gads/admin/config_group_sync.html) to existing Google Groups. The only concern here is to make sure that the AD groups actually have the same users as the existing Google group, since no sync has occurred previously.  

The second issue, Generating AD Security Groups that don't exist as mailing lists, poses a problem.

Running a simulated Sync on GADS shows **80 Google Groups** without a matching AD security group. **(That's quite a few clicks...)**

This is our first opportunity to use Powershell to solve our problems.  

I start by grabbing a list of groups that aren't in AD.  GADS simulated Sync logs those groups in a way that is easily copy/pasted into a nice Tab separated format.

![](http://4.bp.blogspot.com/-Pmb4Odbat8k/VBj_pFaGwrI/AAAAAAAAE0k/ytn4GoF_Qgo/s1600/copy-csv.gif)

**Now that we have the groups we can get them into AD:**

* Read the CSV into powershell
* For each group, generate a security group with matching name.

*"BUT I DONT KNOW HOW TO DO THAT IN POWERSHELL"*

That's ok.  Lets use our minimal knowledge, and Google to figure out how.

A quick Google search shows a Technet article on [Import-CSV](http://technet.microsoft.com/en-us/library/ee176874.aspx).  Reading Microsoft Technet articles is an art all its own.  These articles provide lots of in depth information on Import-CSV.  While more information is GREAT, we're trying to Get Things Done.  Let's CTRL + F to find relevant examples:

![](http://3.bp.blogspot.com/-1bdYBYACh2A/VBhwbOdYh2I/AAAAAAAAEzo/GdbgxGQvFC4/s1600/Import_csv.gif)

We quickly isolate the example CSV import.  By dumping that import into a variable ($csv) we now have an object Powershell can manipulate.  Following a similar search and CTRL + F for [New-ADGoup](http://technet.microsoft.com/en-us/library/ee617258.aspx) we end up a short script:

{% highlight powershell %}
$csv = Import-Csv -Delimiter t -Encoding UTF8 -Header Groups -Path C:\Users\doboyle.STACKEXCHANGE\Desktop\groups.txt
 
foreach ($i in $csv) {
$Group = $i.Groups
New-ADGroup -Name $Group -GroupCategory Security -GroupScope Global -DisplayName $Group -Path "OU=GADS_Groups,OU=IT,DC=Something,DC=YourDomain,DC=com" -Description $Group
}
{% endhighlight %}

**So Close.. But wait there's more!**

Problem 1 and 2 are resolved, but we still need to populate those AD groups.  Many of the groups only have a few users, and are easily updated using the build in Active Directory Interface.  Some groups are larger.  So large that the existing AD interface would require **hundreds**, or even **thousands of clicks**.  If you think that's too many clicks, you'd be right.


#Powershell can help!

Just as before, GADS simulated sync will return a list of users effected by a planned sync.  We can again pull that list of users into a TSV.

**Lets modify our existing Powershell script to populate AD groups:**  
We match on email address, not AD username, so we need to find the AD user with a matching email address, and add them to the correct group. [Get-ADUser](http://technet.microsoft.com/en-us/library/ee617241.aspx) has a filter option, which accepts a string.  If we set the email address provided by GADS as the filtered string, we should always get the user we want.

{% highlight powershell %}
$Group = "All"
 
$path = $("C:\Users\doboyle.STACKEXCHANGE\Desktop\", $Group, ".txt" -join "")
 
#There's no Header in our TSV, so we define one as "GoogleUser"
$csv = Import-Csv -Delimiter t -Encoding UTF8 -Header GoogleUser -Path $path
foreach ($user in $csv) {
$email = $($user.GoogleUser.ToString(), "@stackoverflow.com" -join "")
$user = Get-ADUser -Filter {mail -like $email}
Add-ADGroupMember $Group $user 
}
{% endhighlight %}

My own workflow involves grabbing a single set of usernames and dumping them into a TSV
I name that TSV after the security Group I intend to populate.
Defining my path with the string below lets me change only 1 variable with each pass of the script.
