---
layout: post
title:  "Clean Code - Robert C. Martin"
date:   2016-03-18 19:44:23
categories: tech-book
---

#### Why
Few characteristics of bad code
1. Rigidity - Cannot make any change
2. Fragility - Easy to break
3. Immobility - Hard to reuse
4. Viscosity - Easier to hack rather than add new
  eg. Compilation takes long time - hack - skip modules
It's impact on developer productivity is it reduces with respect to time

The solution is to write the clean code, and it must be done at many levels.

#### How
  * Naming
    * Do's -

      * Must be specific (Avoid Processor, Manager)
      * Searchable
      * Pronounceable
      * Intention revealing
      * Follow Consistent lexicon
      * Use either problem/solution domain as a lexicon
      * Use grammar
      *   Verb/ Verb phrase for Function e.g. postPayment
      *   Noun/ noun phrase for Class eg. Account, WikiPage
      * Follow principle of least astonishment (i.e. Only do whatever you say)

    * Don'ts -

      * Be Cute (Clarity is King) eg. blackHole = /dev/null
      * Add encodings (Only true for static languages)

  * Comments
      * Don't state the obvious

    * Don'ts
      * Add misleading, scary and noisy comments
      * Keep commented code (Versioning is the job of version control)

  * Function
    * Duplication is evil, follow DRY principle

    * Do's -
      * It must always do one thing.
      * Must be small
      * Check for side effect
      * Follow stepdown rule i.e. Write code as you are reading the code

    * Don'ts
      * Pass output argument
      * Use Triads (Function with 3 or more arguments)

  * Class
    * Design with SOLID principle
    * Favour cohesion(of instance variables used in the class)  and reduce coupling
    * Open closed principle (To add new behavior new class must be created but not update the existing class)

  * Test
    * Do's
      * Follow FIRST
      * Choose either 1 concept/test or 1 Assert/test

* Formatting
  * How to enhance the code readability with efficiently and effectively?
    * Vertical formatting
      * Openness - single blank line between concepts
      * Density - Increases the compreheission speed as more content clubbed into few lines
      * Reduce distance between blocks with same conceptual affinity

    * Horizontal formatting
      * 120 characters/ line
      * Openness -
      * Density -

* Error handling
  * It is a thing so need to follow function rule
  * Never pass and return NULL
  * Always return exception with context
  * Favor unchecked exception
  * Checked exception causes ad infinitum problem and violates OCP principle as small change in low level code causes change in signature at higher level.

* Boundaries
  * How to learn new library eg. Log4j?
  * Explore available APIs i.e. boundaries using the unit test.

* Emergence
  * In conclusion to achieve clean code design
    1. Run all Tests
    2. No duplication
    3. Express intent of the programmer
    4. Minimize number of classes and methods (How to get rid of tunnel vision caused by OO design?)

* How to build system?
   * Start with abstraction
   * Use
     * Separation of Concerns design paradigm (Construction and Use are 2 different processes)
     * Inversion of Control - Move responsibilities from 1 object to another (Use DI framework)
      eg. DI container has responsibility of object instantiation
   * Optimize decision making process


* Concurrency
  * Decoupling strategy that decouples What gets done and When it gets done with hope of improving performance.
  * It is different from parallelism
  * It always produces exponential number of execution path so difficult to find the problem.

  * What?

    Few execution models

    1. Producer-Consumer - Bounded resource is shared between them.
    Problem is how to coordinate resource access with signaling.

    2. Readers-Writers - Readers want to read some source of information and writer want to write/update
    same source of information. Problem is throughput and correctness.

    3. Dining Philosophers - Multiple threads want to acquire different resources.
    Different problems introduced are deadlock, livelock, throughput, and efficiency degradation.

    To improve

    1. CPU - Computation

    2. I/O - Disk/Network


  * How to write?
    * Use Single Responsibility Principle
    * Know your library and pick one that is easily configurable.

    * Hints
      1. Keep synchronization section small. As Locks(synchronized keyword) are expensive because they create delays and add overhead.
      2. Use copies of data

  * How to test?
    * Treat spurious failures as candidate threading issues.
    * Get your nonthreaded code working first.
    * Make your threaded code pluggable.
      * One thread, several threads, varied as it executes
      * Threaded code interacts with something that can be both real or a test double.
      * Execute with test doubles that run quickly, slowly, variable.
      * Configure tests so they can run for a number of iterations.
    * Make your threaded code tunable.
    * Run with more threads than processors.
    * Run on different platforms.
    * Instrument your code to try and force failures.
      * Hand-coded  (Add calls to wait(), sleep(), yield(), and priority() in your code by hand)
      * Automated (Use of CGLIB, AspectJ)

### Concurrency terms
* Deadlock - No work, No progress
* LiveLock - Extra work, No progess
* Race condition - Output depends on the execution
* Starvation/ No Fairness - Only 1 thread gets all resources all the time
* Deadlock conditions (All 4 must satisfy)
  1. Mutual exclusion
  2. Lock & wait
  3. No preemption
  4. Circular wait

#### Useful things
* Replace switch case with abstractfactory
* EJB1 and EJB2 - did not separate the concern
* AOP - handles cross cutting concerns like persistence, logging (e.g Spring AOP, JBOSS AOP) and those are managed with configuration xml file or annotation.
* Spring - Has DI container that manages object instantiation
* AspectJ - Handle cross cutting concern
* CAS - Modern OS lock - Atomic construct in Java use this
* Concurrent hashmap is better than HashTable and hashmap with synchronization construct
* Executor - Runnable vs Callable (returns result)
* Future - handy when code needs to execute multiple, independent operations and wait for both to finish
* Blocking v/s NonBlocking - Future.get


### Useful links
* [Weasel words](https://rationalwiki.org/wiki/Weasel_word)
* [Java Anti Patterns](http://www.odi.ch/prog/design/newbies.php#28)
* [Java8 Anti Patterns](https://dzone.com/articles/optional-anti-patterns)
* [java-8-the-good-the-bad-and-the-ugly](https://www.slideshare.net/alimenkou/java-8-the-good-the-bad-and-the-ugly)
* [PrincipleOfLeastAstonishment](http://wiki.c2.com/?PrincipleOfLeastAstonishment)
* [the Stepdown Rule](https://dzone.com/articles/the-stepdown-rule)
* [LawOfDemeter tricks](https://hackernoon.com/object-oriented-tricks-2-law-of-demeter-4ecc9becad85)
* [LawOfDemeter](http://wiki.c2.com/?LawOfDemeter)
* [Viscosity](https://stackoverflparalleisinkjow.com/questions/925827/rotting-design-and-viscosity)
* [Test thread safe class](https://dzone.com/articles/how-i-test-my-java-classes-for-thread-safety)
* [Concurrency is not parallelism](https://vimeo.com/49718712)
* [How to write unmaintainable code](https://github.com/Droogans/unmaintainable-code)
* [Code refactoring](https://blog.codinghorror.com/code-smells/)
* [Code smell](http://mikamantyla.eu/BadCodeSmellsTaxonomy.html)


### TODO
1.  Empirical vertical and horizontal formatting results for various libraries
