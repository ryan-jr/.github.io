---
layout: post
title: Understanding selection sort
date: 2016-07-13 16:15
author: techenomics1
comments: true
categories: [Uncategorized]
---
One of the hardest issues I've had so far in the 'Grokking Algorithms" book is understanding how to implement various sorts/sort types.  Unfortunately the confusion was compounded when I tried to emulate the following code, that does a sort:

*NOTE: The example code in the book is from Python 2.7
[code language='python']


def selectionSort(arr): #Sorts an array
  newArr = []
  for i in range(len(arr)):
    smallest = findSmallest(arr)
    newArr.append(arr.pop(smallest))
  return newArr


[code]

The above code is supposed to take an array and sort it left to right in ascending order (1, 2, 3, 4).  

however when I implemented/tried to translate the code to Ruby, the following resulted:

[code language='Ruby']

def selection_sort(arr) #sorts an array
new_arr = []
arr.each do
    smallest = findsmallest(arr)   #smallest is a Fixnum
    new_arr &lt; 0 do
  smallest = findsmallest(arr)
  new_arr &lt;&lt; arr.delete_at(smallest)
end

