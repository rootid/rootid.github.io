---
layout: post
title:  "The Mythical Man-Month: Essays on Software Engineering - Frederick Brooks"
date:   2016-04-18 19:44:23
categories: tech-book
---

* The tar pit

  * Large programming Product System is like a tar pit.

  * What kind of system you built?
    1. Program
    2. Programming product
    3. Programming System
    4. Programming Product System

  * A programming system product must be:
    1. General (for input, as well as algorithms).
    2. Thoroughly tested so it can be depended upon.  This increases costs
    be as much as 3 times over untested products.
    3. Documented so it can be used, fixed, and extended.
    4. Finally, a programming product becomes a component of a software
    system (it works with other programs and can be called or interrupted) =>
    I/O interfaces become very important => a programming product must be
    tested in all possible combinations with other system components.  This
    is very difficult => A programming system product as a system
    component costs at least 3 times as much as the same program as a
    programming product.
    5. Programming product must be within allotted budget.

* Man-Month metric

  * Large programming product is divided among smaller jobs or tasks.
  * Each job/task requires estimation and scheduling.
  * Man-Month metric is used as the effort unit.
  * In ideal situation when each task is independent and requires no communication then
  Man-month metric follows downward curve if it requires communication and tasks are not independent
  then it follows different curve


  * Brook's rule of thumb for scheduling
  1. Planning - 33%
  2. Coding - 17%
  3. Component test and early system test - 25%
  4. System test and all component tests - 25%

  * Brook's law
    * Adding manpower to a late software project makes it later.

  * Estimation and scheduling problems
    1. Poor estimation
    2. Poor monitoring leads to schedule slippage solution setup milestone and monitor it frequently

* Team organization
  * Which team structure should be used?
    1. Surgical  - Chief programmer has ultimate authority to resolve conflict
    2. Conventional - All members are equal

* Decision making
  * How to resolve conflict and make design choices?
    1. Aristocracy - Elite makes decision
    2. Democracy - Individuals contribute to decision

* Conceptual integrity
  * It is better to have one good idea and carry it through the project
  than having several uncoordinated good ideas. It implies separation of concerns between design and implementation

* Plan to Throw One Away

  Prototype or pilot systems are used explore inconsistencies and incompleteness in the initial design

* Sharp tools

  * Use same common tools inside team
    1. Utilities
    2. Debugging aids
    3. Test code generators
    4. Text processing system
  * Target machine/Deployment environment must be different from vehicle machine/build environment
  * Use programming tools like
    1. Data services and simulators
    2. Performance simulators
    3. Logical simulators
    4. Product simulators
  * Interactive facility improves production by 2x

* The Second System Effect

  While developing the next new system individuals becomes ambitious and tries to achieve lot of things

* Why tower of Babel failed?

  Due to lack of
    1. Communication - Solution Maintain work book, meeting logs
    2. Organization - Solution No division of labor

* What ReadMe should include?

  1. Purpose
  2. Environment
  3. Domain range
  4. Function realized and algorithm used
  5. I/O format
  7. Options
  8. Running time
  9. Accuracy

* Design
  * Top down design

    * What?
      * Architecture
      * Implementation
      * Realization

    * How?
      * Clarity
      * Partitioning
      * Suppression of details
      * Testing
        * Building Scaffolding
          1. Data built for debugging
          2. Miniature file
          3. Well formatted meaning less data


#### Links
* [The purple wire](https://alvarogarcia7.github.io/blog/2015/02/24/the-purple-wire/)
* [PERT analysis](https://en.wikipedia.org/wiki/Program_evaluation_and_review_technique)


#### TODO
1.  How to compute the coding effort?
  * 4 empirical result from Portman, Haar, Aron and Corbato.

2. How to effectively schedule and monitor the task?
