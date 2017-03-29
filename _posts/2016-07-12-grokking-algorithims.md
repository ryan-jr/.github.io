---
layout: post
title: Grokking Algorithims
date: 2016-07-12 00:48
author: techenomics1
comments: true
categories: [Uncategorized]
---
Recently I purchased the book "Grokking Algorithms: An Illustrated Guide for Programmers and Other Curious People" (Amazon link below), and so far I'm 3 chapters in and I love it.  The way that it introduces and explains concepts, provides analogies, and illustrates the ideas being presented is/are top notch.  All of the code is extremely readable, easy to understand, and easy to implement (which may be a function of the fact that I have some experience in Python, but it's just as translatable to Ruby).

There are some things though that I wish were explained more, for instance in this code:

[code language="Python"]

def binary_search(list, item):

#initializing the high/low values
	low = 0
	high = len(list)—1

	while low &lt;= high:
	  mid = (low + high)
	  guess = list[mid]
	  if guess == item:
		return mid
	  if guess &gt; item:
		high = mid - 1    #setting the new high point
	  else:
		low = mid + 1     #setting the new low point
	return None           #dealing with the case that the item does not exist

[/code]

which performs a binary search (O(log(n)) time), there are some things missing.
1.  Initially going through/reading this I would love an explanation of WHY the high/low is incremented and decremented by 1  via mid(It's because we're finding the new midpoint and putting it back into high/low so the midpoint can be properly calculated when going through the loop again)

2.  A better descriptor than simply list, and item for the arguments that are being passed would also be much appreciated.  In the paragraph preceding the code, it explains what item is, but only leaves the reader to infer what 'list' is, which can be reasonably assumed, but can also be a sticking point when reading the code for the first time.

Other than small sticking points such as that, the book is very well done, logical, well thought out, and very enjoyable.

I initially got curious about algorithms because I wanted to understand how to implement/design my code better, and this book is a great introduction to it, especially when it seems that so many resources out there are designed for far more academic purposes and academic backgrounds in CS.

https://www.amazon.com/Grokking-Algorithms-illustrated-programmers-curious/dp/1617292230
