---
layout: post
author: bret
title: "A Better Syntax for Scheduled Tasks"
tags:
- engineering
date: 2015-08-27
comments: true
source: http://bret.codes/schyntax-part-1/
---

There are lots of domain-specific languages for schedules. The most prominent might be [Cron](https://en.wikipedia.org/wiki/Cron) (for \*nix scheduled tasks), but there's also [RRULE](http://www.kanzaki.com/docs/ical/rrule.html) (for iCalendar events) and many others. Cron isn't exactly what I'd call human-friendly. Can you tell me what `10 8,20 * 8 1-5` means if you don't use Cron often? Some DSLs go in the opposite direction and are wildly verbose, or will sacrifice expressiveness for simplicity.

So... I wrote my own DSL to [solve those problems](https://xkcd.com/927/). It's called Schyntax, and we're already using it in production at Stack Overflow. Part 1 of this post is about the language itself. In [Part 2](http://bret.codes/schyntax-part-2), we'll look at how to setup Schyntax-based scheduled task runners in both JavaScript and C# (there is also a Go implementation in progress, if you'd like to know when it's ready, follow me [on Twitter](https://twitter.com/bretcope)... where I almost never tweet anything).

### Schyntax Syntax

In contrast with other scheduling DSLs, Schyntax explicitly tries to be powerful, easy to remember, and terse, but human readable. To a programmer, the syntax should feel immediately familiar and intuitive. For example, `hour(5)` means to run on the fifth hour of every day. `minute(*)` means to run every minute. `seconds(3,8,52)` would run on the third, eighth, and fifty-second seconds of every minute.

#### Ranges

Want to define a range? Borrowing range operators from modern programming languages, `minute(5..7)` would run every minute between the fifth and seventh minutes, inclusive (5,6,7). `minute(5..<7)` is the same range, except it excludes the end value (5,6).

#### Intervals

What if you want to run every fifth minute? As a programmer, if you wanted to run a command on every fifth iteration of a loop, you might use the modulus operator (typically `%`).

{% highlight javascript %}
for (var i = 0; i < 50000; i++) {
    if (i % 5 == 0) {
        // code to run on every fifth iteration
    }
}
{% endhighlight %}

Schyntax captures the spirit of that by using `minute(* % 5)` to indicate "run every five minutes." Or, you could use `minute(10..22 % 3)` to run every third minute starting at the tenth, and ending at the twenty-second (effectively the same as `minute(10,13,16,19,22)`).

> Intervals always reset at the beginning of a range. For example, `minutes(*)` is implicitly the range `minutes(0..59)`, so the interval is always relative to the 0 minute of each hour. `minutes(*%17)` does __NOT__ mean "run every 17th minute of the day." It means, "run every 17th minute of every hour starting at the first (0) minute of the hour."

#### Exclusions

The logical negation operator is `!` in many programming languages. So if you want to say, "run every minute except the third," you could write `minute(!3)`. To run every fourth hour except the fifteenth, use `hours(*%4, !15)`. You can exclude any value, range, or interval. Exclusions always take precedence, so be careful not to exclude too much.

#### Expression Names

You might have noticed that both plural and singular expression names work (i.e. `hour()` vs `hours()`). In fact, most expressions have several aliases to make it easier to remember without having to go look at the documentation. For example, for minutes, you could use `m`, `min`, `minute`, `minutes`, `minuteOfHour` or `minutesOfHour`.

Schyntax is whitespace-insensitive and case-insensitive, so `hours(*)` is the same as `HOURS ( * )` is the same as `hOuRs(    *)`.
 
In addition to the `hours`, `minutes`, and `seconds` expressions we've seen so far, Schyntax also supports `daysOfWeek`, `daysOfMonth`, and `dates` expressions. Complete documentation of the supported expressions can be found on the [Schyntax GitHub page](https://github.com/schyntax/schyntax#expressions).

### Examples

* Every hour from 0900 UTC until, and including, 1700 UTC (__all dates and times are UTC in Schyntax__):

    <pre><code>    hours(9..17)</code></pre>

* Every five minutes from 0900 until, but not including, 1700 (notice the half-open range operator `..<` instead of `..`):
  
    <pre><code>    hours(9 ..< 17) min(*%5)</code></pre>

* Same as the previous schedule, except only on Monday through Friday (inclusive):

    <pre><code>    days(mon..fri) hours(9 ..< 17) min(*%5)</code></pre>

* Same as previous, except it won't run any time during the noon hour (UTC):

    <pre><code>    days(mon..fri) hours(9..<17, !12) min(*%5)</code></pre>

* Noon UTC every Monday through Friday, except on Christmas:

    <pre><code>    days(mon..fri) hour(12) date(!12/25)</code></pre>

* Noon UTC on the first and last days of the month:

    <pre><code>    daysofmonth(1, -1) hour(12)</code></pre>

* Every minute between 2300 and 0100 UTC (ranges which wrap around are okay):

    <pre><code>    hours(23..<1) min(*)</code></pre>

* Here's the Schyntax version of the Cron schedule example I gave earlier (`10 8,20 * 8 1-5`). See if this feels more readable to you:

    <pre><code>    minute(10), hours(8,20) days(mon..fri) dates(8/1..8/31)</code></pre>

#### Groups

What if you want to run every five minutes during the week, and every half hour on weekends? You can do that by grouping expressions inside curly braces:

<pre><code>    { days(mon..fri) min(*%5) } { days(sat..sun) min(*%30) }</code></pre>

You could break the groups up into multiple lines if you wanted. Remember, Schyntax is whitespace-insensitive.

> [Full syntax documentation is available on GitHub](https://github.com/schyntax/schyntax).

### Implementations

Although you'll generally want to use the "Schtick" task runner (described in [Part 2](http://bret.codes/schyntax-part-2)), you can actually use the DSL directly to generate schedules. Let's show how to extract the next five event times for a schedule in both JavaScript and C#.

#### JavaScript

Schyntax is available on npm [![npm version](https://badge.fury.io/js/schyntax.svg)](http://badge.fury.io/js/schyntax) via `npm install schyntax`.

{% highlight javascript %}
var schyntax = require('schyntax');

var sch = schyntax('min(*%2)'); // create Schedule object
var events = [];
var d = new Date(); // start from right now
for (var i = 0; i < 5; i++) {
  d = sch.next(d); // get next event time after the `d` Date argument
  events.push(d);
}
{% endhighlight %}

#### C# .NET

Schyntax for .NET is available on nuget.org. [![NuGet version](https://badge.fury.io/nu/Schyntax.svg)](http://badge.fury.io/nu/Schyntax)

{% highlight csharp %}
using Schyntax;

var sch = new Schedule("min(*%2)"); // create Schedule object
var events = new List<DateTimeOffset>();
var d = DateTimeOffset.UtcNow; // start from right now
for (var i = 0; i < 5; i++)
{
    d = sch.Next(d); // get next event time after the `d` Date argument
    events.Add(d);
}
{% endhighlight %}

---

→ __goto__: [In Part 2, we'll use a scheduled task runner to put schyntax to work.](http://bret.codes/schyntax-part-2). We'll also look at how my team at Stack Overflow is using it to improve consistency in our scheduled tasks.
