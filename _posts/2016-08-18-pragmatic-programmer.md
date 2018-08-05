---
layout: post
title:  "The Pragmatic Programmer - Andrew Hunt, David Thomas"
date:   2016-08-18 19:44:23
categories: tech-book
---

* Main idea
  - As a pragmatic programmer you should design Orthogonal, flexible, Reversible systems.
  You should be able to estimate tasks precisely. For debugging you must change your attitude and thinking.
  Always try to reduce the entropy in the system.

* History
   - Pragmatic (Latin word) = Skilled in business
   - Programming is a craft and you must care for it.

* Characteristics of Pragmatic programmer
   - Early adopter/fast adapter - Always learn and adapt new things quickly.
   - Inquisitive - Ask question - How it works?
   - Critical thinker
   - Realistic
   - Jack of all trades - Always up to date with latest technology trends.

* How to?
  - Fight software rot.
  - Avoid the trap of duplicating knowledge.
  - Write flexible, dynamic, and adaptable code.
  - Avoid programming by coincidence.
  - Bullet-proof your code with contracts, assertions, and exceptions.
  - Capture real requirements.
  - Test ruthlessly and effectively.
  - Delight your users.
  - Build teams of pragmatic programmers.
  - Make your developments more precise with automation.


* A Pragmatic Approach
  * Duplication
    * What is it?
      - Same thing is expressed in two or more places.
      - It leads to maintenance problems.
      - Classification
          - Imposed
          - Inadvertent
          - Impatient
          - Inter-developer

  * Why use accessor methods?
    - It makes easier to add functionality, such as caching, in the future without changing interface.

  * Orthogonality
    - It is a term from geometry, when lines are independent and always intersect at right angles.
    - It makes software system simple to use and maintain as it eliminates effects between unrelated things.
    - It promotes reuse.
    - It limits number of execution path to MxN where M and N are number of execution paths from 2 orthogonal system.

  * Reversibility
    * What?
      - Make your code flexible and adaptable
    * Why?
      -  We don't always make the best decisions the first time around.
    - How to?
      - Write less code using metaprogramming
      - Use Law of Demeter and decoupling

  * Tracer Bullets
    - How to hunt down unknowns during requirement gathering for a new project?
    - Like a real bullet but it gets immediate feedback with cheap solution.
    - Different from prototyping (a learning experience).
    - It might miss the target.
    - Advantages
        - Users get to see something working early.
        - Developers build a structure to work in.
        - You have an integration platform.
        - You have something to demonstrate.
        - You have a better feel for progress.

  * Entropy
     - It is a term from physics that refers to the amount of "disorder" in a system.
     - Why?
       - broken windows -  bad designs, wrong decisions, or poor code

  * Flexibility
     - Can adapt new requirements quickly.
     - How to achieve it?
        - Write less code

  * Know your audience with WISDOM acrostic

* A Pragmatic philosophy
    * The Cat Ate My Source Code
      - Provide Options, Don't Make Lame Excuses

    * Stone Soup and Boiled Frogs (2 perspectives)
      - Be the catalyst for change
      - The Villagers' Side (Beware of scope creep and time slippage)
        - Remember the Big Picture


* The basic tools
    - Tools amplify talent. So use powerful tools like shell, Vim/Emacs

    * Power Editing
      - Pick powerful editor
      - Learn them and reduce the number of keystrokes you need to type
      - Try to expand and use it for more tasks than you do already

    * Source Code Control and build
      - Must be automatic and repeatable.

    * Debugging
      * It is a painful thing
      * Change the mindset
      * Best way to fix the bug is reproducing it

      * Debugging Checklist
          - Is the problem being reported a direct result of the underlying bug, or merely a symptom?
          - Is the bug really in the compiler? Is it in the OS? Or is it in your code?
          - If you explained this problem in detail to a coworker, what would you say?
          - If the suspect code passes its unit tests, are the tests complete enough? What happens if you run the unit test with this data?
          - Do the conditions that caused this bug exist anywhere else in the system?

    * Code Generators
      - Write Code That Writes Code
      *  Active
            - Use multiple times and create throwaway code
            - It reads some form of script or control file to produce results.
      *  Passive
            - Use once with templates
            - Save typing. They are basically parameterized templates

* Pragmatic paranoia

  - You Can't Write Perfect Software
  - Design by Contract
      - Use of precondition, postcondition and class invariant
    - Use Assertive Programming to verify your assumption.

* Bend, or break

    * Metaprogramming
      - Goal is to think declaratively (specifying what is to be done, not how) and create highly dynamic and adaptable programs.
      - Put Abstractions in Code, Details in Metadata.
      - Advantages
        - It forces you to decouple your design, which results in a more flexible and adaptable program.
        - It forces you to create a more robust, abstract design by deferring details—deferring them all the way out of the program.
        - You can customize the application without recompiling it. You can also use this level of customization to provide easy workarounds for critical bugs in live production systems.
        - You may even be able to implement several different projects using the same application engine, but with different metadata.

    * Temporal Coupling
      - Coupling in time. Method A must always be called before method B
      - You must avoid it

* While you are coding

    - Don't Program by Coincidence
    - Always Program Deliberately
    - Always be aware of what you are doing. Eg. Fred let things get slowly out of hand, until he ended up boiled, like the frog in Stone Soup and Boiled Frogs.
    - Don't code blindfolded. Attempting to build an application you don't fully understand, or to use a technology you aren't familiar with, is an invitation to be misled by coincidences.
    - Proceed from a plan, whether that plan is in your head, on the back of a cocktail napkin, or on a wall-sized printout from a CASE tool.
    - Rely only on reliable things. Don't depend on accidents or assumptions. If you can't tell the difference in particular circumstances, assume the worst.
    - Document your assumptions. Design by Contract, can help clarify your assumptions in your own mind, as well as help communicate them to others.
    - Don't just test your code, but test your assumptions as well. Don't guess; actually try it. Write an assertion to test your assumptions. If your assertion is right, you have improved the documentation in your code. If you discover your assumption is wrong, then count yourself lucky.
    - Prioritize your effort. Spend time on the important aspects; more than likely, these are the hard parts. If you don't have fundamentals or infrastructure correct, brilliant bells and whistles will be irrelevant.
    * Refactoring
      - Why?
        - Duplication
        - Nonorthogonal design
        - Outdated knowledge - Things change, requirements drift, and your knowledge of the problem increases. Code needs to keep up.
        - Performance
      - How?
        - Don't try to refactor and add functionality at the same time.
        - Make sure you have good tests before you begin refactoring. Run the tests as often as possible. That way you will know quickly if your changes have broken anything
        - Use red green approach


* Before the project
  - Don't Gather Requirements—Dig for them (Use trace bullet technique)
  - Work with a User to Think Like a User
  - Program specification is the process of taking a requirement and reducing it down to the point where a programmer's skill can take over specification trap.
  - Some Things Are Better Done than Described

* Coding hints
  1. Write shy code - Favor decoupling
  2. Avoid global data - Think of Singleton pattern
  3. Avoid similar functions - Think of Strategy pattern
  4. Get into the habit of being constantly critical of your code


* Managing a knowledge portfolio is very similar to managing a financial portfolio
  - Learn new thing regularly like a daily investment.
  - Diversification is the key to long-term success  - Learn different tech stack.
  - Manage risk - Don't put all your technical eggs in one basket.
  - Buy low, sell high - Learning Java when it first came out may have been risky, but it paid off handsomely for the early adopters.
  - Portfolios should be reviewed and rebalanced periodically.

* Suggested goals
  - Learn at least one new language every year.
  - Read a technical book each quarter.
  - Read nontechnical books, too
  - Take classes.
  - Participate in local user groups.
  - Experiment with different environments.
  - Stay current.
  - Get wired.
  - Surf the Web for papers, commercial sites, and any other sources of information you can find.

* Terms
  * AOP - Define things at one place and use it everywhere
  * Rubber ducking - Explain the problem to inanimate object.

### Useful links

*  [Broken window NY police](https://en.wikipedia.org/wiki/Broken_windows_theory)
*  [Use case template](http://www.cs.otago.ac.nz/coursework/cosc461/uctempla.html)
*  [Red green refactor](https://www.codecademy.com/articles/tdd-red-green-refactor)
*  [Test harness automation](https://en.wikipedia.org/wiki/Test_harness)
*  [Rubber ducking](https://en.wikipedia.org/wiki/Rubber_duck_debugging)
*  [Law of Demeter](https://en.wikipedia.org/wiki/Law_of_Demeter)
