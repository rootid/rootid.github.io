---
title:  "Joel On Software"
author: VS
date:   2024-08-04 19:44:23
categories: [Blogging, Tutorial]
tags: [writing]
render_with_liquid: false
---

* Part one - Bits and Bytes

  * All languages work the same way. You must develop language agnostic attitude.
  * C String vs Pascal String Which one is better and why?
  * Case of custom strcat function and how to make it right and efficient?
  * What is Shlemiel the Painter's Algorithm? How and why is it inefficient?
  * Fixed allocation v/s Malloc
    * Why Malloc is slow? and how it allocates the memory? (allocating blocks of memory that are powers of 2 in size. It never wastes more than 50 percent of the space)
  * How to use realloc? - double the size of memory that was previously allocated. That means that you never have to call realloc more than lg(n). times,
  * XML v/s RDBMS - Why choose RDBMS over XML for large data? Hint- Lexing and Parsing are the slowest operations.

  * How to structure the application from code to testing.
    * Usual problems are
      1. Most of the time specs are missing.
      2. Build takes more than one step.
      3. Scope creeps add additional features.

  * Character set - What Every programmer should know?
    - Myth Plain text = ASCII = 8 bit character
    - Unicode - code point - different shape
    - What is encoding? eg. UTF-8

  * Why specs are needed?
      - For planning
      - Explore the unknowns and different solution appraches
      - Ad hoc or offline communction with manager, QA and business folks
      - Writing is a muscle. The more you write, the more you’ll be able to write.

    "specs are useless, because nobody follows them, they’re always out of date, and they never reflect the product.”

    * What are the specs?
      At least 2 types of specs you should have
      1. Functional - How product will work from user's perspective.
      2. Techincal - It talks about data structures, relational database models, choice of programming languages and tools, algorithm, etc.

    * How to write them?
      1. Write like a reader
      2. Be Funny, add humor and characters.
      3. Write as Simply as Possible
      4. Review and Reread Several Times

  * Software scheduling with excel
    * Schedule = Wood block
    * Scheduling consist of 4 major parts - Identify, Partition, Monitor and Review.
    * Project is made of various features and each feature must have tasks.
    * Columns used in excel - Features, Task, Priority, Original estimate, Current estimates, Elapsed time, Remaining time
    * Keep debugging, integration buffer in schedule.
    * Use excel features - Shared Lists,AutoFilter, Pivot Tables, Workday Function

  * Daily builds
      1. They must be Automatic, daily and complete.
      2. Must run with a script or command.
      2. Must report errors in verbose mode.

  * Maintain bug cycle
    * Find, Analyze, Fix the prioritized bugs (Use Eisenhover tactics to schedule the bugs)

  * 5 worlds
    * Know where you going to release your product?
      1. Shrinkwrap
      2. Internal
      3. Embedded
      4. Games
      5. Throwaway


  * Don't be scare by Architecture Astronauts
    * When you go too far up, abstraction-wise, you run out of oxygen. Sometimes, smart thinkers just don't know when to stop, and they create these absurd, all-encompassing, high-level pictures of the universe that are all good and fine, but don't actually mean anything at all.

  * Fire and motion = Japanese Kaizen
    * Handle your mood swings. Every day, you should make your software better and better,

  * Craftsmanship
    * Making software, writing elegant code, making design is a craftsmanship and not a manufacturing process.
    * Always think how to set up the assembly line scheme to achieve 10X growth.

  * 3 Wrong myths
    1. The difficult part about searching is finding enough results. - problem - How to sort the result
    2. Anti-aliased text looks better.
    3. Network software should make resources on the network behave just like local resources. You need to consider
    Availability, Latency and Reliability

  * Biculturalism (Unix v/s Windows)

    * Unix philosophy
    1. Silence is Golden
    2. Programs that babble don't tend to play well with other programs.

  * Crash reports from users
    * Always Collect, identify duplicate crashes, Debug, Triage



* Part two - Managing Developers

   Do's         | Don'ts
    --- | ---
   Have testers | Incentive pay
                |  Multitasking
                |  Rewrite the code from scratch as it's harder to read code than to write it.


  * Guerrilla guide to interviewing
    * Introduction, recent project, programming questions are you satisfied,
  * How to look for passionate candidates?
  * The law of leaky abstraction
    * All nontrivial abstractions, to some degree, are leaky. eg. TCP, SQL, NFS, C++ strings
  * Measurement - how to measure the performance of the employee?

  * How to showcase project?
    * If you show a nonprogrammer a screen that has a user interface that is 90 percent worse, they will think that the program is 90 percent worse.
    * If you show a nonprogrammer a screen with a user interface that is 100 percent beautiful, they will think that the program is almost done.
When politics demands that various nontechnical managers or customers "sign off" on a project, give them several versions of the graphic design to choose from.
    * When you're showing off, the only thing that matters is the screen shot. Make it 100 percent beautiful.

* Part three - Random thoughts

 * Big macs vs naked chef = Consulting vs Product development organization
    * It is hard to scale talent. To scale talent creates rule and dumb follows.
    * There is always a trade-off between quantity and quality.

  * NIH syndrome/Reinventing wheel is bad. Always think to built a layer on top of existing one.

  * Ben & Jerry's v/s Amazon = Organic growth vs Get Big fast

   Ben & Jerry's | Amazon
    --- | ---
   No network effect, weak customer lock-in  | Strong network effect, strong customer lock-in
  Little capital required; break even fast | Outrageous amounts of capital required; profitability can take years
  Corporate culture is important.  |  Corporate culture is impossible.
  Mistakes become valuable lessons. |  Mistakes are not really noticed.
  You'll probably succeed. You certainly won't lose too much money. | You have a tiny chance of becoming a billionaire, and a high chance of just failing.
  It takes a long time to get big. |  You get big very fast.

  * 80/20 rule -
    * 80 percent of the people use 20 percent of the features. So you convince yourself that you only need to implement 20 percent of the features, and you can still sell 80 percent as many copies. Unfortunately, it's never the same 20 percent. Everybody uses a different set of features

* How to fix Joel test in your organization?
  * Just do it - Eg. Think to use make/bash kind of tools to achieve a single step build process.
  * Recruit good candidates.


* Part four - .NET commentary
  * 2 Microsoft groups Idealists

#### Links

* [The Joel Test: 12 Steps to Better Code](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/)
* [The Joel Test for 2017](https://myers.io/2017/04/04/the-joel-test-for-2017/)
* [The Absolute Minimum Every Software Developer Absolutely, Positively Must Know About Unicode and Character Sets](https://www.joelonsoftware.com/2003/10/08/the-absolute-minimum-every-software-developer-absolutely-positively-must-know-about-unicode-and-character-sets-no-excuses/)
* [Painless Functional Specifications – Part 1: Why Bother?](https://www.joelonsoftware.com/2000/10/02/painless-functional-specifications-part-1-why-bother/)
* [Painless Functional Specifications – Part 2: What’s a Spec?](https://www.joelonsoftware.com/2000/10/03/painless-functional-specifications-part-2-whats-a-spec/)
* [Sample spec](http://new.joelonsoftware.com/RandomStuff/copilot_spec.pdf)
* [Three Wrong Ideas From Computer Science](https://www.joelonsoftware.com/2000/08/22/three-wrong-ideas-from-computer-science/)
* [Five Worlds](https://www.joelonsoftware.com/2002/05/06/five-worlds/)
* [Biculturalism](https://www.joelonsoftware.com/2003/12/14/biculturalism/)
* [The Law of Leaky Abstractions](https://www.joelonsoftware.com/2002/11/11/the-law-of-leaky-abstractions/)
* [Back to Basics](https://www.joelonsoftware.com/2001/12/11/back-to-basics/)
* [C strings](http://www-ee.eng.hawaii.edu/Courses/EE150/Book/chap7/subsection2.1.1.2.html)
* [The Guerrilla Guide to Interviewing](https://www.joelonsoftware.com/2006/10/25/the-guerrilla-guide-to-interviewing-version-30/)
* [Gitflow insanity](http://endoflineblog.com/gitflow-considered-harmful)

