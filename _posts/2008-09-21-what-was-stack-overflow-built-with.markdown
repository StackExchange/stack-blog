---
author: jeffatwood
comments: true
date: 2008-09-21 17:54:58+00:00
layout: post
redirect_from: /2008/09/what-was-stack-overflow-built-with
slug: what-was-stack-overflow-built-with
title: What Was Stack Overflow Built With?
wordpress_id: 102
categories:
- company
- server
---


This question keeps coming up a lot on [Stack Overflow](http://stackoverflow.com) for some reason:



**What was Stack Overflow built with?**



Some even [wondered if Stack Overflow was built in Ruby on Rails](http://stackoverflow.com/questions/67131/is-stackoverflowcom-written-in-ruby-on-rails). I consider that a compliment!



This question has been covered in some detail in our [podcasts](http://blog.stackoverflow.com/category/podcasts/), of course, but I know not everyone has time to listen to a bunch of audio footage to find the answer to their question. So, in that spirit, **here's the technology "stack" of Stack Overflow**, the stuff [Jarrod, Geoff, and I](http://blog.stackoverflow.com/2008/08/special-development-team-podcast/) used to build it:



<table cellpadding="4" width="600" cellspacing="4" >
<tr >
<td >framework
</td>
<td >[Microsoft ASP.NET](http://en.wikipedia.org/wiki/ASP.NET)
</td></tr>
<tr >
<td >language
</td>
<td >[C#](http://en.wikipedia.org/wiki/C_Sharp_(programming_language))
</td></tr>
<tr >
<td >development environment
</td>
<td >[Visual Studio](http://msdn.microsoft.com/en-us/vstudio/default.aspx)
</td></tr>
<tr >
<td >web framework
</td>
<td >[ASP.NET MVC](http://www.asp.net/mvc/)
</td></tr>
<tr >
<td >browser framework
</td>
<td >[jQuery](http://jquery.com/)
</td></tr>
<tr >
<td >database
</td>
<td >[SQL Server 2008](http://msdn.microsoft.com/en-us/sqlserver/default.aspx)
</td></tr>
<tr >
<td >data access layer
</td>
<td >[LINQ to SQL](http://msdn.microsoft.com/en-us/library/bb425822.aspx)
</td></tr>
<tr >
<td >source control
</td>
<td >[Subversion](http://en.wikipedia.org/wiki/Subversion_(software)) (now [Mercurial through Kiln](http://blog.stackoverflow.com/2010/04/stack-overflow-and-dvcs/))
</td></tr>
<tr >
<td >compare tool
</td>
<td >[Beyond Compare](http://www.scootersoftware.com/index.php?from=codinghorror)
</td></tr>
<tr >
<td >source control integration
</td>
<td >[VisualSVN](http://www.visualsvn.com/) (now, [VisualHg](http://visualhg.codeplex.com/)) 
</td></tr>
</table>



We have a few other minor dependencies as well, such as [ReCaptcha](http://recaptcha.net/), [DotNetOpenId](http://code.google.com/p/dotnetopenid/), and the [WMD](http://wmd-editor.com/) control (which we subsequently [rewrote](http://blog.stackoverflow.com/2009/01/wmd-editor-reverse-engineered/)), but that's about it.

