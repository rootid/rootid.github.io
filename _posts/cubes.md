---
layout: post
title:  "Cubes"
date:   2015-02-07 19:44:23
categories: DB
---
### [Implementing Data Cubes Efficiently] [link]

[link]: http://web.eecs.umich.edu/~jag/eecs584/papers/implementing_data_cube.pdf

#### Idea :
  * Select set of relations that is used to materialize view (precompute the relation result)
  in order to reduce the query result response time.
  * Identify the set of relations using the Lattice framework + greedy algo.

#### Assumption :
  * cost of relation/query depends on # of generated rows/records as result.
  * Everything works under relational system or multidimensional database (MDDB).

#### Basic overview :
  * Decision Support System (DSS) uses data present in operational database.
  * operational database contain data with state information (maintain history).
  * And the procesing is called as OLAP/multi-dimenational data processing.
  * The queries/relations heavily uses aggregation.
  * multidimensional database (MDDB) : Not scalable (materialize all cells in the cube)
  * Solution : Materialize only selected views/relation.
  * Drill-down : Process of viewing data at progressively more detailed levels.
    (eg.Total sales per year->per month->per day)
  * *Roll-up : Process of viewing data at progressively less detailed levels.
    (eg.Total sales per day->per month->per year)
  * Represent/model the relation in the lattice framework.
  * Element/relation at the root of the lattice is used to evaluate the child relation. (notation used
  root ≤ child)

      eg.day ≤ month ≤ year
  * Lattice framework is used to derive the cost of the relation and relations are selected
  * greedily which contributes the maximum cost benefit.

  * The weight assignment below the root relation is not explained correctly.

#### Terms :

  * Normalization : Reduce the data redundancy
  * Denormalization : Increase the data redundancy
  * compute the grouping
  * 2^n / (L(i)+1)^n scanning algorithm for n cubes
  * L(i) : levels inside the dimension table  +1 : all
  * eg .time (day,month,year) = 4^n
