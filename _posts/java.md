---
layout: post
title:  "Java"
date:   2015-02-22 19:44:23
categories: JAVA language
---

### V/S C++
* No pointers.
* No Mutiple inheritance.
* No operator overloading So has to override `toString()` method otherwise,just overrride `==`.
* No control over object lifecycle/memory management.
* No virtual machine is required.

### Threadsafe vs nonthread-safe
* StringBuffer vs StringBuilder
* Vector vs ArrayList
* HashTable vs HashMap

### Uni vs Bidirectional
* Iterator vs List iterator
* Comparator vs Comparable
* (able to sort with diff attribute) vs (Natural ordering)
* Unsigned shift vs Signed shift
* `>>>/<<<`     vs  `>> / <<`
* Overriding vs Hiding
* Late binding  (Compile time binding)
* fail-fast vs fail-safe
* Instance lock vs Class level lock

*Checked vs Unchecked exception
(checked and verified @compile time) vs ()

#### Intrinsic lock/monitor lock (class or object level lock) features
* No self deadlock (Lock is renetrant)
* No lock_acquire and lock_release interface
* Blocking call


#### Problem
 * If you ask for a lock and can not acquire it, then you will block until you do. 
 * So, getLock() is Blocking call.
    
If you wanted to have atomic methods in a class, you could
mark each of them with the synchronized keyword.
This has the same general effect as surrounding the body
of the method with synchronized(this).

1. Monitor/Intrinsic lock
2. Conditional variable (Use signaling mechanism) Wait (Blocking call) ,notify 
Th is solves the busy waiting problem it simulates sleep lock
3. Extrinsic lock (Reentrant lock)
4. Semaphore 
5. In built Collection support (CopyArrayOnList,ConcurrentHashMap,HashMap) 
(Creates problem when client try to use the collection 
an d start performing the operations like iterations,delete,insert)
6. Reader and writer lock (ReadWriteLock)
Multiple Reader can take lock however write lock is exclusive
7. Hardware supported instruction CAS (CompareAndSet) 
if length of critical section is small i.e. NO IO operation is involved


### Concepts

#### String
* String pool
* String.intern()
* AutoBoxing : Creates new Object

#### Generics
* Arrays (Covariant) while generics are invariant.
* JAVA char is 16 bits,while Byte is 8 bits

#### Java memory model
1. Kernel-space(1GB) + User-space = 4GB
2. JVM can only use the user-space
3. OS has 1-1 / many-1 threading model
4. JVM creates the threads in the userspace
5. Only heap memory is shared accross thread while each thread has its own stack.


#### Threads

* Get thread dump from java process # of threads
1. GC
2. finalizer
3. main
4. Complier

*  Start() vs Run() method


#### Interfaces 
1. List
2. Set
3. Map

#### Expression
* Expressions are evaluated and then it is assigned.
* Eg.Typecating at RHS


#### TODOS in JAVA
* Avoid loitering 
* Always create immutable classes
* Create instances using factory method (provides better API to clients)
* For monetory calculations use `BigDecimal` (Unlimited precision unlike float has 32 and Double has 64 bit)
* Store the password in `char[]` array instead of `String`

#### JAVA memory model
*  Young/nurture V/s Old generation


#### GC algorithms
* Mark-sweep
* Mark-sweep-compact
* Parallel Mark-sweep-compact
* Tricoloring


