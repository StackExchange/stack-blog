---
layout: post
title: On Credentialism In Software Development
author: haneycodes
hero: https://ununsplash.imgix.net/photo-1416339306562-f3d12fefd36f?q=75&fm=jpg&s=dd8bffcffb3d622bea05c74d203121c6https://unsplash.imgix.net/photo-1416339442236-8ceb164046f8?q=75&fm=jpg&s=8eb83df8a744544977722717b1ea4d09
source: http://www.haneycodes.net/on-credentialism-in-software-development
category: engineering
tags: credentialism software development
---

We're just two days from a brand new year and yet the primary measurement of a developer's skill seems to be the same as it was 20 years ago. The most important classification to most companies is job title, as I talked about in great detail in [my last post](http://www.haneycodes.net/the-trouble-with-job-titles). The job title is acquired via working for a veritable slough of credentialist companies whose HR departments break it down very simply:

- You're a **Junior Developer** if you have 0-2 years of professional experience
- You're a **Developer** if you have 2-5 years of professional experience
- You're a **Senior Developer** if you have 5+ years of professional experience
- You're a **Team Lead, Architect, or Manager** once someone promotes you from **Senior Developer**

The problem with this sort of classification is obvious. **The truth is that one person has 10 years of development experience, and the person standing next to her has 1 year of development experience repeated 10 times.** The people that end up in the latter category tend to be "company [wo]men" - the ones who stick with a job forever and never try something new.

I am not one to believe that rockstar developers are valuable. [As Scott Hanselman writes](http://www.hanselman.com/blog/TheMythOfTheRockstarProgrammer.aspx), rockstar developers do much more harm than good. I do, however, believe that the proper classification of developer skill lies in my paraphrasing of Nate Waddoups' description:

- A **Junior Developer** creates complex solutions to simple problems. You see these people across all companies and in all kinds of positions: from Junior Developer to CIO. They take a one-off batch service that processes requests and make it into a 40 class, 2000 line monster that involves a <code>ServiceFactoryFactory</code> and a <code>ServiceDecorator</code>.
- A **Developer** creates simple solutions to simple problems. They've gotten past the pattern-itis and realize (for the most part) when to use design patterns, and when to just write simple code that works. These people tend to write the batch service in 100 lines and it works correctly 99% of the time (and is easy to maintain too).
- A **Senior Developer** creates simple solutions to complex problems. These people have begun to truly master the art of software development and can whip up a highly scalable e-commerce app in fewer assemblies, classes, and lines than most of us would have used to create "Hello World" as a **Junior Developer**. They would be incredible role models if only they'd drop the ego.
- A **Truly Exceptional Developer** is a rare thing. They don't just make complex problems simple - they make complex problems <i>disappear entirely</i>. These people wield code like I imagine ancient Samurai wielded the blade: with great precision and skill. They dropped their ego years ago. In doing so, they empowered themselves to continue to learn from others which ultimately caused them to excel far beyond their **Senior Developer** peers. They are incredible role models and all around must-haves on any high performance team. They love to teach as much as they love to learn.


Notice that I never gave a time frame to any of these levels of skill. I don't believe that 1 **Truly Exceptional Developer** can be faster than 10 **Senior Developers**. I do believe that in the long run they save you 10x your time and money. They write extremely maintainable code which has few bugs and even fewer scaling issues. They can quickly learn and do <i>anything</i> asked of them. They are truly versatile and efficient.

What would be required for companies to finally start hiring based on skill as opposed to credentialism? The reality is that some already do. To hire skill takes nothing more than ignoring the number of years of experience written on paper and simply administering a few code tests to a candidate that appears to have the desired personality traits. These tests should be moderately difficult and focus on a problem that has many answers - only a few of which are good.

A great example (though well known at this point) is the **FizzBuzz** test:

> Write a program that counts from 1 to 100. If the current count is evenly divisible by 3, output "Fizz". If the current count is evenly divisible by 5, output "Buzz". If the current count is evenly divisible by both 3 and 5, output "FizzBuzz". Otherwise, just output the current count.

This task is fairly simple but has many solutions - only a few of which are good. In tasking a candidate to complete FizzBuzz, their skill (or lack thereof) will show itself immediately:

- The **Junior Developer** will write a whole ton of if statements, possibly even hard-coding all of the multiples. This section of code is probably in its own class, injected via the constructor and provided by the <code>DivisorCounterFactory</code>. Also, there will be as many lines of comments as there are code.

{% highlight c# %}
// Count to 100
for (int i = 1; i <= 100; i++)
{
    if (i == 15 || i == 30 
        || i == 45 || i == 60...)
    {
        // Write "FizzBuzz" to the console
        Console.WriteLine("FizzBuzz");
    }
    else if (i == 3 || i == 6 
        || i == 9 || i == 12...)
    {
        // Write "Fizz" to the console
        Console.WriteLine("Fizz");
    }
    else if (i == 5 || i == 10 
        || i == 15 || i == 20...)
    {
        // Write "Buzz" to the console
        Console.WriteLine("Buzz");
    }
    else
    {
        // Write current count to the console
        Console.WriteLine(i);
    }
}
{% endhighlight %}

This is not a very scalable way to solve the problem.

- The **Developer** will whip together a few if statements using modulus to solve the problem.

{% highlight c# %}
for (int i = 1; i <= 100; i++)
{
    if (i % 3 == 0 && i % 5 ==0)
    {
        Console.WriteLine("FizzBuzz");
    }
    else if (i % 3 == 0)
    {
        Console.WriteLine("Fizz");
    }
    else if (i % 5 == 0)
    {
        Console.WriteLine("Buzz");
    }
    else
    {
        Console.WriteLine(i);
    }
}
{% endhighlight %}

Decent solution, fairly simple and by-the-book answer.

- The **Senior Developer** will realize that they can combine the statements.

{% highlight c# %}
for (int i = 1; i <= 100; i++)
{
    string result = "";
    if (i % 3 == 0)
    {
        result += "Fizz";
    }
    if (i % 5 == 0)
    {
        result += "Buzz";
    }

    Console.WriteLine(result.Length > 0 ? result : i.ToString());
}
{% endhighlight %}
Clean, simple code that takes up maybe 10 lines when you get rid of my [Allman style code indentation](http://en.wikipedia.org/wiki/Indent_style#Allman_style). Then, if the ego remains, they'll ask you why you make developers jump through interview hoops, and possibly berate you for wasting their precious time and skills on such a remedial task.

- The **Truly Exceptional Developer**, having never before heard of the FizzBuzz problem, will write the **Senior Developer** solution in a matter of 2 or 3 minutes. They'll then discuss the ways in which it could possibly be improved. Things like how a case statement might technically be faster than an if statement in some cases due to omitting an op code at the assembly level, or how to optimize appending immutable strings together in order to avoid creating additional objects which would later have to be garbage collected. They'll thoroughly enjoy the problem and be enthusiastic in the discussion.

A 30 minute code test immediately gives you more insight into the candidate's skill than a whole day of discussions ever could. You can proceed to hiring with confidence (perhaps after a few more code tests administered by different people in order to observe the candidate's ability to work with others). You can also reject a candidate with confidence. No matter how good of a salesperson they are, they will not be able to talk their way past the code test.

In summary, my unsolicited advice to you is this: if you want to work with good developers, just reject any interview process or job offer that doesn't involve a code test. A lack of code testing means that all manners of developer will slip through that company's hiring process (including those at the very low end of the bell curve) and that they will be your coworkers.

Via this hiring approach, you'll meet **Junior Developers** with 25 years of experience, and **Truly Exceptional Developers** fresh out of school - and everything else in between.

Doesn't it seem obvious that we should be tested on our coding skills, given that coding is literally the primary task that we are hired to do for 40+ hours a week? Do you think that a hospital would hire a surgeon without testing their skills? Would the NFL or NHL recruit a player without testing their skills (or at least seeing their skills in action)?

In all professions, the top tiers test their candidates for practical skills. This filters out the unskilled, resulting in awesome teams of incredibly skilled people. These are the teams we want to be on. These are the companies we want to work for. These are the environments in which we learn and become **Truly Exceptional Developers**.

PS - I hope that you had a terrific Christmas and will have a Happy New Year!
