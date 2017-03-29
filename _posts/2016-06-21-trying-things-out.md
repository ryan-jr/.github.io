---
layout: post
title: Trying Things Out
date: 2016-06-21 08:19
author: techenomics1
comments: true
categories: [Uncategorized]
---
One of the more interesting algorithms  that I've found challenging over the last couple of months is the Fibonacci sequence.  (If you don't know what it is, you can read more about it here: http://www.mathsisfun.com/numbers/fibonacci-sequence.html , the (rough) TL;DR version is: add the two previous numbers together and come up with the sum of the next number).  Thinking back to when I was first starting out with Python, the algorithm I designed looked like this:
<pre>counter = 0
a = 1
b = 2

while counter &lt;= 2:
  a = a + b
  print('THIS IS A: ')
  print(a)
  b = b + a
  print('THIS IS B: ')
  print(b)
  counter = counter + 1


  print(a)
  print(b)</pre>
Sooooo pretty rough by most standards.  Now, earlier tonight/this morning I redid the Fibonacci sequence from scratch (I know, I know DRY, but I wanted to see how much/if I had improved).  What easily took me 2 hours+ in Python, because I was struggling to understand concepts, took me less than 20 minutes earlier.  For me that is an incredible benchmark for improvement.  The following is the code from Ruby
<pre>#initialize the array and the counter variable(s)
fib = [0,1]
counter = 0

#start the loop, call the necessary variables from the array, add them, 
#put the result into the array, increment the counter
while counter &lt; 10
  a = fib[-1]
  b = fib[-2]
  c = a + b
  fib &lt;&lt; c
  counter +=1
  end</pre>
While I'm sure there are other more advanced methods such a recursion that could be utilized, I'll be the first to admit that I don't know recursion as of yet, but for now I'm happy to see an improvement in my code, through finding a different way to solve the problem using arrays.

I'm just worried that it might be bad practice to only declare the variables in the loop, and I'm sure it could be improved upon, but it is nice to see some kind of progress.

&nbsp;

&nbsp;
