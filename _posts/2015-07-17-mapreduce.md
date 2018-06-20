---
layout: post
title:  "MapReduce: Simplified Data Processing on Large Clusters"
date:   2015-07-17 19:44:23
categories: paper
---

## Big Idea
  * Solve web scale data processing problem with MapReduce functional programming paradigm and large cluster of machines.

  * Provide simple interface for parallel and distributed system that hides details of
    > input data partition, scheduling, parallelization, fault-tolerance, locality optimization, and load balancing.

  * Move data and computation closer to machine

## Outline

  * What

    Large scale data processing framework accepts the MapReduce program.

    Any programmer can write MapReduce program without thinking about distributed system.

    Input is divided into M files. Framework calls Map() for each input file, produces set of "intermediate" data. It collects all "intermediate" data passes to Reduce() call. And output from Reduce() is stored in R output files

  * How

    Fault-tolerance
    1. Worker/MR Job failure - re-execute the task

  * Why

## Measurement

## Comparison

## Conclusion

   * The Good


  > Progammer can only focus on algorithm and ignores the mechanics.

  > N computers gets you Nx throughput with an assumption keys are evenly distributed across cluster.

  > Configurable parameters like number of map/reduce tasks, Split data size, Combiner function, Partitioning function.


  * The Bad

  > Master failure aborts MR operation.

  > Only suitable for large scale batch operation.

  > Not all algorithms converted into map reduce pattern.

  > Incremental updates to big data, e.g. add a few documents to a big index

  > Unpredictable reads (neither Map nor Reduce can choose input)

  * The unknown

## Buzz words

> GFS - Distributed file system developed by Google

> Straggler - Slow running machine
