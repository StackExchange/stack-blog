---
author: jeffatwood
comments: true
date: 2008-09-21 17:54:58+00:00
layout: post
redirect_from: /2008/09/what-was-stack-overflow-built-with
hero: https://i.stack.imgur.com/q1P8r.jpg
slug: what-was-stack-overflow-built-with
title: What Was Stack Overflow Built With?
wordpress_id: 102
tags:
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
<td ><a href="http://en.wikipedia.org/wiki/ASP.NET">Microsoft ASP.NET</a>
</td></tr>
<tr >
<td >language
</td>
<td ><a href="http://en.wikipedia.org/wiki/C_Sharp_(programming_language">C#</a>
</td></tr>
<tr >
<td >development environment
</td>
<td ><a href="http://msdn.microsoft.com/en-us/vstudio/default.aspx">Visual Studio</a>
</td></tr>
<tr >
<td >web framework
</td>
<td ><a href="http://www.asp.net/mvc/">ASP.NET MVC</a>
</td></tr>
<tr >
<td >browser framework
</td>
<td ><a href="http://jquery.com/">jQuery</a>
</td></tr>
<tr >
<td >database
</td>
<td ><a href="http://msdn.microsoft.com/en-us/sqlserver/default.aspx">SQL Server 2008</a>
</td></tr>
<tr >
<td >data access layer
</td>
<td ><a href="http://msdn.microsoft.com/en-us/library/bb425822.aspx">LINQ to SQL</a>
</td></tr>
<tr >
<td >source control
</td>
<td ><a href="http://en.wikipedia.org/wiki/Subversion_(software)">Subversion</a> (now <a href="http://blog.stackoverflow.com/2010/04/stack-overflow-and-dvcs/">Mercurial through Kiln</a>)
</td></tr>
<tr >
<td >compare tool
</td>
<td ><a href="http://www.scootersoftware.com/index.php?from=codinghorror">Beyond Compare</a>
</td></tr>
<tr >
<td >source control integration
</td>
<td ><a href="http://www.visualsvn.com/">VisualSVN</a> (now, <a href="http://visualhg.codeplex.com/">VisualHg</a>)
</td></tr>
</table>



We have a few other minor dependencies as well, such as [ReCaptcha](http://recaptcha.net/), [DotNetOpenId](http://code.google.com/p/dotnetopenid/), and the [WMD](http://wmd-editor.com/) control (which we subsequently [rewrote](http://blog.stackoverflow.com/2009/01/wmd-editor-reverse-engineered/)), but that's about it.

