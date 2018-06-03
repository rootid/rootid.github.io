---
layout: post
title:  "Reactive programming"
date:   2015-07-01 19:44:23
categories: scale,programming
---



 React to events (event-driven)
 React to load (scalable)
 React to failures (resilient)
 React to users (responsive)

call-backs

Handling events is often done using call-backs. E.g. using Java observers:

Problems:
▶ needs shared mutable state.
▶ cannot be composed.
▶ leads quickly to “call-back hell”.


Use fundamental constructions from functional programming …
… to get composable event abstractions.
▶ Events are first class.
▶ Events are often represented as messages.
▶ Handlers of events are also first-class.
▶ Complex handlers can be composed from primitive ones.


An important class of functional patterns: monads
▶ Functional programs in a stateful world
▶ Abstracting over events: futures
▶ Abstracting over event streams: observables
▶ Message passing architecture: actors
▶ Handling failures: supervisors
▶ Scaling out: distributed actors
