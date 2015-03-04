# [Stack Overflow Blog](http://jonhmchan.github.io/blog)
## (Working Name)

This is a prototype for a new blog in the Stack Overflow ecosystem centered on developer topics.

## Getting Started
This blog runs on [Jekyll](http://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/). If you are actively involved in improving the infrastructure of this project, you should read the documentation for these platforms thoroughly (they're pretty short as it is). If you are simply contributing, this guide should be enough to get you going. Regardless of how you are contributing, you need to know some basics:

 - Git and GitHub
 - Adding yourself as a contributor
 - Adding posts with markdown

## Quickstart

###1. Add yourself as a contributor with an author file

You need to create a new markdown file with your username in the `_authors` folder to be included as a contributor on the blog. For example, Jon Chan uses the username `jonhmchan` so he would create a new file named `jonhmchan.md`. In the content of this markdown file should be the following:
```
---
layout: author
id: [username, must be same as file name]
name: [your full name]
job: [job title, in quotes]
avatar: [url to an image to be used with all your posts]
twitter: [your twitter handle]
website: [url to your personal site]
---
```
So Jon Chan's `jonhmchan.md` file would look like:
```
---
layout: author
id: jonhmchan
name: Jon Chan
job: "Web Developer"
avatar: https://pbs.twimg.com/profile_images/519220131243646977/79kxjMuY_400x400.jpeg
twitter: jonhmchan
website: http://www.jonhmchan.com/
---
```
**How to add this file**
If you are a developer, you can do this simply by submitting a PR or adding this file to the `_authors` directory. If you are not a developer, you should try and learn Git and GitHub using [some tutorials](https://try.github.io/levels/1/challenges/1). If you *really* prefer not to, you can use [this link on GitHub](https://github.com/StackExchange/blog/new/gh-pages/_authors) to create this file, then submit your changes by adding a commit message like `Added [your name] to authors` and hitting the `Commit new file` button:

![Adding yourself as an author](http://stackexchange.github.io/blog/images/adding_authors.png)

###2. Publishing a post
To create a new post, you need to create a new markdown file with a particular format in the `_posts` folder in order to publish. The file needs to include the date and title seperated by dashes: `YYYY-MM-DD-[Title with dashes as spaces].md`. For example, Jon Chan published a post on January 28th, 2014 titled "My First Six Weeks Working at Stack Overflow". So the title of his file was `2014-1-28-My-First-Six-Weeks-At-Stack-Overflow.md`.  In the content of this markdown file should be the following: 
```
---
layout: post
title: [title of your post]
author: [your author id]
hero: [url of a high quality hero image to be used for your post]
source: [url of the original post, optional]
category: [what category this post is in, optional]
tags: [what tags are associated with this post separated by spaces, optional]
---
[Content of your post in markdown]
```
You can see what [this post](http://stackexchange.github.io/blog/My-First-Six-Weeks-Working-At-Stack-Overflow/) looks like as a markdown file by going to [this link](https://github.com/StackExchange/blog/edit/gh-pages/_posts/2014-1-28-My-First-Six-Weeks-Working-At-Stack-Overflow.md)