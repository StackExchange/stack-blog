# [Stack Overflow Blog](http://stackexchange.github.io/blog)

This is a prototype for a new blog in the Stack Overflow ecosystem centered on developer topics. "Stack Overflow Blog" is a working name for this prototype.

## Getting Started
This blog runs on [Jekyll](http://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/). If you are actively involved in improving the infrastructure of this project, you should read the documentation for these platforms thoroughly (they're pretty short as it is). If you are simply contributing, this guide should be enough to get you going.

## Links
 - [Add yourself as a contributor on the blog](https://github.com/StackExchange/blog/new/gh-pages/_authors) ([See example file](https://github.com/StackExchange/blog/edit/gh-pages/_authors/jonhmchan.md))
 - [Publish a new post](https://github.com/StackExchange/blog/new/gh-pages/_posts) ([See example post file](https://github.com/StackExchange/blog/edit/gh-pages/_posts/2014-1-28-My-First-Six-Weeks-Working-At-Stack-Overflow.md), [published version](http://stackexchange.github.io/blog/My-First-Six-Weeks-Working-At-Stack-Overflow/))

## What this blog is for
This is a blog for the developers of Stack Exchange to share their work on anything technology-related at the company. This is the scope that we're playing around with for now, we may certainly expand it later on if we see that there's interest in expanding (outreach, diversity, infographics, guest contributors, etc.) But for now these are the requirements:

 - Your post is about something related to Stack Exchange or the work you do there
 - It is about technology or the technology community

If you are unsure of whether your post meets the requirements, it's probably not a great fit. Here are some examples of things that do or don't fit in with these requirements:

:heavy_multiplication_x: Why CSS frameworks are awesome generally
:heavy_check_mark: How design and development worked together to create a Pattern Library

:heavy_multiplication_x: How awesome the food is at Stack Exchange
:heavy_check_mark: Why private offices are helpful to devs versus open office plans

:heavy_multiplication_x: How I built *another* 2046 clone, but in Cobol!
:heavy_check_mark: How I helped build Winter Bash snow animations

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
**Adding tags**

Jekyll has some support for tags, but requires that you do a little bit of work in order to make sure new tags are accomodated. All tags must have a markdown file named after the tag in the `_tags` folder. For example, the `onboarding` tag markdown file `onboarding.md` looks like this:
```
---
layout: tag
slug: onboarding
---
```
When writing a new post, you can add space separated tags at the top of the post markdown file. Any tags that already have an associated markdown file in the `_tags` folder will get its own page at `/tags/[tag-name]` and will be featured on the homepage. However, if you are adding a new tag, make sure that you create the appropriate markdown file in the `_tags` folder.

## Making code changes

If you are interested in making changes to the design, functionality, or structure of the blog, you're going to need to set up a local environment and understand some of the technologies behind the site.

**1. Install Jekyll and dependencies.** First thing you're going to need to do is set up Jekyll and the appropriate dependencies so you can develop locally. The easiest way to install everything is to use [RubyGems](https://rubygems.org/pages/download) and follow the instructions on the [Jekyll](http://jekyllrb.com/docs/installation/) website. In addition to the basic Jekyll installation, you also need to install the `jekyll-sitemap` gem. After install RubyGems on your machine, you really only to run two basic commands:
```
gem install jekyll
gem install jekyll-sitemap
```

**2. Run a local version of the blog.** Using Git, clone the latest version of this repository to your local machine using the following command:
```
git clone https://github.com/StackExchange/blog.git
```
Then go into root of the folder and run `jekyll serve`:
```
cd blog
jekyll serve
```
This will get a local version of the blog running on your machine, accessible on `localhost:4000/blog`

**3. Read up on the documentation.** To really understand how to develop the site there are a few things you're going to need to read up on to make meaningful changes:
 - [Jekyll](http://jekyllrb.com/docs/home/) The static site generator used for the site
 - [GitHub Pages](https://help.github.com/articles/using-jekyll-with-pages/) How the site is hosted
 - [Liquid](https://docs.shopify.com/themes/liquid-documentation/basics) The templating language used with Jekyll by Shopify
 - [Stack Overflow Careers Pattern Library](http://stackexchange.github.io/uikit/index.html) Our pattern library by our designers that includes a full LESS framework for rapid development