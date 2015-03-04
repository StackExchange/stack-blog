# [Stack Overflow Blog](http://stackexchange.github.io/blog)

This is a prototype for a new blog in the Stack Overflow ecosystem centered on developer topics. "Stack Overflow Blog" is a working name for this prototype.

## Getting Started
This blog runs on [Jekyll](http://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/). If you are actively involved in improving the infrastructure of this project, you should read the documentation for these platforms thoroughly (they're pretty short as it is). If you are simply contributing, this guide should be enough to get you going. Regardless of how you are contributing, you need to know some basics:

 - Git and GitHub
 - Adding yourself as a contributor
 - Adding posts with markdown

## Links
 - [Add yourself as a contributor on the blog](https://github.com/StackExchange/blog/new/gh-pages/_authors)
 - [Publish a new post](https://github.com/StackExchange/blog/new/gh-pages/_posts)

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
source: [url of the original post so a source banner will be added to the post, optional]
category: [what category this post is in, optional]
tags: [what tags are associated with this post separated by spaces, optional]
---
[Content of your post in markdown]
```
So Jon Chan's post `2014-1-28-My-First-Six-Weeks-At-Stack-Overflow.md` would look something like the following:
```
---
layout: post
title: My First Six Weeks Working at Stack Overflow
author: jonhmchan
hero: https://ununsplash.imgix.net/photo-1416339306562-f3d12fefd36f?q=75&fm=jpg&s=dd8bffcffb3d622bea05c74d203121c6https://unsplash.imgix.net/photo-1416339442236-8ceb164046f8?q=75&fm=jpg&s=8eb83df8a744544977722717b1ea4d09
source: http://www.jonhmchan.com/blog/2014/1/16/my-first-six-weeks-working-at-stack-overflow
category: engineering
tags: onboarding
---

I started working at [Stack Exchange](http://www.stackexchange.com/) (which many know for/as [Stack Overflow](http://stackoverflow.com/)) as a software developer just six weeks ago. This (lengthy) post is about a number of things: what it was like relearning a lot of what I know about web development, the challenges and resources I encountered doing so, and a few pointers others might benefit from on-boarding on a new development team.

...
```
You can see what [this post](http://stackexchange.github.io/blog/My-First-Six-Weeks-Working-At-Stack-Overflow/) looks like as a full markdown file by going to [this link](https://github.com/StackExchange/blog/edit/gh-pages/_posts/2014-1-28-My-First-Six-Weeks-Working-At-Stack-Overflow.md).

**How to add this file**

Adding this file is very similar to adding your original authors markdown file. You can use git to add your post markdown file in the `_posts` folder, or you can use the [GitHub user interface](https://github.com/StackExchange/blog/new/gh-pages/_posts) to do so. Note that the moment you commit this file, it will be published to the blog.

**Writing your post**

Everything following the second set of three dashes in your post markdown file will be the content of your post. We use [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) to format the post. 

**Code snippets**

Jekyll has support for code snippets and highlighting built-in using [Pygments](http://pygments.org/). To include a codeblock with in your markdown, use the following syntax:
```
{% highlight [language] %}
[Your code here]
{% endhighlight %}
```
So if you were going to be including a snippet of Ruby code in your post, it would look like:
```
{% highlight ruby %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}
```