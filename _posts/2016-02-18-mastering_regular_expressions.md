---
layout: post
title:  "Mastering Regular Expressions - Jeffrey E. F. Friedl"
date:   2016-02-18 19:44:23
categories: tech-book
---

This Book is divided among 3 sections

#### Basics

  * What is regular expression?

    Collection of literals and metacharacters used to find the pattern in the text.
  * What are metacharacters?

    Characters with special meaning like .,?,*,[],(),^,$

  * Match unicode characters with \p{L}

  * Different regex operations
    * Grouping - ()
    * Alternation - \|
    * Word boundaries - <>
    * Lookahead or look right- (?=)
    * Lookbehind or look left - (?<=)

  * Use of backreference

#### Mechanics
  * How regular expression works?
    Regex processor compiles regular expression into DFA/NFA and it is used to match the regular expression in the target string.

  * How to make regular expression correct and efficient?
    * Compile Caching eg. re.compile or Pattern.compile
    * Remove unnecessary parenthesis

#### Specifics
  * Regex APIs used in the JAVA(java.util.regex), PHP, C# an Perl
  * In Python, In case of raw string escape charcter (\) never evaluated eg.
    ``` python
    tmp = r'hello \"world\"'
    print(tmp)
    hello \"world\"
    tmp = 'hello \"world\"'
    print(tmp)
    hello "world"
    ```
  * Tripple quoted string, hold \n as it is


### Useful links

* [Regex Tricks](https://www.rexegg.com/regex-tricks.html)
* [Regex CheatSheet](http://web.mit.edu/hackl/www/lab/turkshop/slides/regex-cheatsheet.pdf)
* [Regex Visulaizer](https://regexper.com)
* [Regex Tutorial](https://www.regular-expressions.info/tutorial.html)
* [ACK for code search](https://beyondgrep.com/)
* [Regex for VIM](http://vimregex.com/)
* [Online regex evaluator](https://regex101.com/)
* [Python regex howto](https://docs.python.org/3/howto/regex.html#regex-howto)
* [Regex cheatsheet specific](https://remram44.github.io/regex-cheatsheet/regex.html#programs)


