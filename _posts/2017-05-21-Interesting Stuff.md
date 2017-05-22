---
layout: post
title: Interesting Stuff
date: 2017-05-21 23:43
author: techenomics1
comments: true
categories: [Uncategorized]
---


So there have been som interesting problems that I've been tackling lately, one of the toughest was solving the algorithim for writing a method that would take an array/list of numbers in a set order, and determine if that array was increasing, AND if that array could still be increasing if no more than one element was removed.  For example:

```

[1, 3, 2, 1]  // False
[1, 2, 1]	  // True 
```

It involved a couple of for loops, figuring out how to shift an array effectively using Arrays.copyOf(), and a few coditionals, and I have no doubt it could be refactored better.  

The other fun one was writing a method that took in two arrays such as ["a", "b", "c"], [1, 2, 3] and would interchange these arrays so that it would result in/return 1 array of ["a", 1, "b", 2, "c", 3].  

That one ended up being 2 different for loops and effective use of the Arrays.toString() method.  

I'm still trying to get the hang of recursion, but things are better now than they were so that's a plus.  