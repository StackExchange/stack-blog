# [Stack Overflow Blog](http://jonhmchan.github.io/blog)
## (Working Name)

This is a prototype for a new blog in the Stack Overflow ecosystem centered on developer topics.

## Getting Started
This blog runs on [Jekyll](http://jekyllrb.com/) and [GitHub Pages](https://pages.github.com/). If you are actively involved in improving the infrastructure of this project, you should read the documentation for these platforms thoroughly (they're pretty short as it is). If you are simply contributing, this guide should be enough to get you going. Regardless of how you are contributing, you need to know some basics:

 - Git and GitHub
 - Adding yourself as a contributor
 - Adding posts with markdown

## Quickstart
###Add yourself as a contributor with an author file
1. You need to create a new markdown file with your username in the `_authors` folder to be included as a contributor on the blog. For example, Jon Chan uses the username `jonhmchan` so he would create a new file named `jonhmchan.md`. In the content of this file should be the following:

	---
	layout: author
	id: jonhmchan
	name: Jon Chan
	avatar: https://pbs.twimg.com/profile_images/519220131243646977/79kxjMuY_400x400.jpeg
	twitter: jonhmchan
	job: "Web Developer"
	website: http://www.jonhmchan.com/
	---

So Jon Chan's `jonhmchan.md` file would look like:

	---
	layout: author
	id: jonhmchan
	name: Jon Chan
	avatar: https://pbs.twimg.com/profile_images/519220131243646977/79kxjMuY_400x400.jpeg
	twitter: jonhmchan
	job: "Web Developer"
	website: http://www.jonhmchan.com/
	---