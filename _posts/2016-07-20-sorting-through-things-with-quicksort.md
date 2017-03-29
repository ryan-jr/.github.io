---
layout: post
title: Sorting through things with quicksort
date: 2016-07-20 03:45
author: techenomics1
comments: true
categories: [Uncategorized]
---
So, from Grokking Algorithms I'm implementing quicksort via Ruby.  A quick summary:
Quicksort is a 'divide and conquer' (D&amp;C) algorithm which simply means we figure out the simplest case/base case first, and then divide/decrease the problem until it becomes the base case.  E.g. to figure out the largest square size we can use for a plot of land we could divide things up until we figure out the smallest possible factor.  Note that binary search is also a D&amp;C algorithm.

The other thing of note is that not only can recursion be useful in a number of cases (depending on system resources, time, etc...), but some languages such as Haskell don't use/have loops so we they use recursion.

This is also a look a functional programming, which is simply programming that attempts to avoid changing states/having side effects which is good because it allows less potential for bugs and creates more of a 'sandbox' environment.

Implementing quicksort was a challenge, but was easier now that I have a better grasp on recursion and was able to see how it can be implemented.   It was also pretty useful to have an understanding of arrays and array methods. I ran into problems after creating the algorithm of Ruby returning a 'stack level too deep' error,   which simply means that there is infinite recursion. The reason why this was happening is that the array(s) that I was feeding into quicksort (I used a psuedorandom number generator again to generate 100 'random' numbers in an array) had duplicate numbers and the quicksort didn't know how to handle an array such as [10,10] so it was just looping infinitely. In order to remedy this I made sure that the array had only unique values by calling array.uniq as was suggested in the StackOverflow post commented on in my code.

[code language="ruby"]

&amp;amp;nbsp;
&amp;lt;pre&amp;gt;#trying out quicksort
#implemented the solution recommended here:
#http://stackoverflow.com/questions/24540577/ruby-quick-sort-stack-level-too-deep-systemstackerror

def quicksort(array)
array = array.uniq                 #making sure to remove duplicate values and avoid inf recursion
  if array.length &amp;lt;= 1             #base case
    return array
  else
    pivot = array.sample           #chooses a random element from the array
    less = []
    greater = []

    array.each do |x|
      if x &amp;lt;= pivot
        less &amp;lt;&amp;lt; x
      elsif
        greater &amp;lt;&amp;lt; x
      end
    end

    sorted_array = []
    sorted_array &amp;lt;&amp;lt; quicksort(less)
    sorted_array &amp;lt;&amp;lt; pivot
    sorted_array &amp;lt;&amp;lt; quicksort(greater)

    return sorted_array.flatten!.uniq
  end

[/code]</pre>
*Edit:
For fun I decided to see the runtime of quicksort after 100 iterations of arrays filled with 100 random numbers, and generally I found that it falls between 0.003 and 0.006 seconds.

Output:
"The average runtime after 100 iterations of quicksort is 0.00304216"
