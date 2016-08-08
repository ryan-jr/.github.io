---
layout: post
title: Recursion Post Mortem
date: 2016-07-15 01:14
author: techenomics1
comments: true
categories: [Uncategorized]
---
<strong>Recursion From a Newbie's Perspective</strong>
So in this post I'll explain what I understand about recursion, how it works, and my latest experience with recursion.  To help with this I used 'Grokking Algorithms' from Aditya Bhargava (ch 4)

NOTE: In this post, because of my background in Python I use the terms 'function' and 'method' interchangeable.

<strong>What I understand</strong>
1. Recursion is simply a program, function, or method calling/modifying itself.
2. Recursion can save time/code and make things easier to read
3. Recursion is often used in sorts and algorithms as a means to save time, space, and resources.
4. Recursion has a 'base case' (ending condition) and a 'recursive case' (continuing condition)

How it Works
"To first understand recursion, you must understand recursion"
-stackoverflow post

With that bit of humor out of the way the simplest way that I've found to understand recursion is to provide an example and explain it in English. (also, random tangent: There was a REALLY good episode of Ruby Rouges which talks about internationalization, what a challenge it is, and how English is essentially the Lingua Franca of programming, but that it can also be exclusionary at times)

So a small example of recursion in action would be with calculating a factorial.

[code language="Ruby"]

#recursive method/function for calculating a factorial
def fact(num)

  if num == 1         	#base case
    return 1
  else			#recursive case
    return num * fact(num - 1)
  end

end

puts fact(3)

[/code]
So let's step through the above code, bit by bit.

STEP 1:
We call the function/method for fact and pass in the number 3.

STEP 2:
The number num gets assigned the integer value 3

STEP 3:
The method checks to see if num is the integer value 1. It is not, so it moves to the else statement.

STEP 4:
The method wants to return the statement/line num (in this case still 3) multiplied by the method/function fact that passes in the number decremented by 1. Written out a bit more explicitly for this step through, it would look like

return 3 * fact(3 - 1)

STEP 5:
This is where the magic of recursion comes in, because of the last part of the line ( fact(num - 1) ), the method/function will CALL ITSELF in order to get the answer.

Side note: At this point you can almost think of this as unpacking boxes, as you unpack the first box, you find another box, within it, and you want to make sure you get down to the last box. In this case, we have just opened up the first box, found another box, realized we're not at the end yet, and want to keep going.

STEP 6:
The num that is being passed to fact is 2, because num was originally 3, but we modified it with the final line. Self modification is one of the key parts of recursion.

KEY TO NOTE:
Another key part of recursion is that it saves the state of each of the equations that we step through. This means that recursion will 'save' each of the recursion cases, until it hits the base case, and then complete them.
In some sense almost the function/method would work backwards once it hits the base case.
It would see it hit the base case, return 1 to what called it (the other part of the function/method) and the statement would/will run.

STEP 7:
Because 2 is not 1 we go to the recursive case again, and this time we would multiply 2 * fact(2 - 1).

STEP 8:
We call factorial again, but this time we pass in 1 as num. Because of this we run the base case, and we return 1. Well what was it that called our function/method? The last line of our function/method!

Step 8:
Now we work back through the calculations and get 6 because:
LAST RETURN: 1
PREVIOUS RETURN: 2
ORIGINAL CALL/NUM: 3

1 * 2 * 3 = 6

-because recursion holds these numbers for us, it can take up space in memory etc... since it has to be stored, this is at the tradeoff of potentially being better/more intuitive for the job at hand, or being better to search through data structures (such as trees)

What recursion is, as I understand it, in a line or two.
Recursion is when a function, calls and modifies itself/the data structure it is iterating/recursing on, and holds any necessary values in memory.

My Latest Experience With Recursion
So last night while reading Grokking Algorithms, there is a section of the book that deals with, passing a function a number, and recursively summing the digits of each number (CH4: Quicksort, Pg. 58). However, while this is written out in psuedocode and drawn out there is no Python code to go along with it, so I went ahead and tried it in Ruby. I started at 10:00pm last night, and didn't get it finished/figured out until 1:00 this afternoon, after about 8 hours total of thinking about it/working on it.

What follows are the various iterations that I tried of recursion, along with my thoughts on it. I'm doing this to deconstruct my own thinking, see where I made mistakes, and figure out where I can improve.

Attempt 1: Building Blocks

[code language="Ruby"]

#iterating through an array to verify potential output
def recur_sum(array)

  sum = 0
  array.each_with_index do |value, index|
    sum += array[index]
  end
  return sum

end

puts recur_sum([1, 2, 4])

[/code]

The above code, is simply iterating through the array, and utilizing what I already understand about Ruby. I also wanted to verify that things would work the way I expected them to. This could be done with a while loop, or a for loop, but the .each method seems to be the quickest/easiest implementation in Ruby.

Attempt 2: Trying anything

[code language="Ruby"]

def recur_sum(array)

  if array.length == 0					#base case
      puts sum
  else
    puts array						#recursive case
    head = array[0..array.length-1]			#attempting to put all numbers but last one into 'head' variable
    tail = array[-1]					#attempting to put the last number into 'tail' variable'
    sum = tail + recur_sum(head)
    head.clear
    tail.clear
    array.clear
    return sum
  end

end

[/code]

With this one I took this idea from Leigh Halliday [2], but soon found out that she had made her own class to define the 'head' and 'tail' objects. I wanted my method to be self contained, but I did learn some cool stuff about the * operator along the way.

My thinking/logic here was that I was checking to see if the length was 0 (as I had seen other Python programs do), and if not, I would have 'head' be all of the numbers from the 1st number to the next to last number, and then have 'tail' be the last number, and that I would simply sum these together. From there I would call the sum and simply try and recursively use that. I would then try and clear out anything in head or tail because I thought the array needed to be 'cleared' in order to get a 0 return and meet that condition, if I did not return sum immediatley after completing that code. I was also trying to make sure that the 'head' and 'tail' variables would pass arrays back because if I had to call the function/method recusrively, the method would need an array in order to work properly.

Needless to say, the above code didn't work. I also tried to do the same thing with global variables (bad practice, I know), because I was afraid that I wouldn't be able to properly intialize the 'sum' variable as an integer and/or make it accessible anywhere else in the code. I later realized I only needed the return(s) because if I intialized 'sum' as 0 it would set 'sum' to zero every time I recursively called/stepped into the function.

After I got nowhere with this one, I decided to call it a night(morning) and try again later.

Attempt 3: Trial and Error

[code language="Ruby"]

def recur_sum(array)
#this one works (but will delete instances of the same number)

  if array.empty?					#base case
    return 0
  elsif nil						#nil recursive case
    x = array.last
    array.delete(x)
    return x + recur_sum(array)
  else
    x = array.last					#general recursive case
    array.delete(x)
    return x + recur_sum(array)
  end

end
[/code]

This one gets closer to what I'm aiming at. It checks to see if the array is empty, checks the nil case, and has an else case. I use the variable call because I wanted to store the value somewhere, and be able to update/modify the array. The issue I ran into with this one though was that it was deleting all instances of (x) that were specified. For example if the array held values array = [1, 2, 1] and I specified array.delete(1), and then if I printed the array back out, the program would return [2], because it deleted all instances of '1' that it could find.

Attempt 4: Eureka!

[code language="Ruby"]

#using recursion to sum integer values in an array
def recur_sum(array)

  if array.empty?		#base case
    return 0
  else
    x = array.last		#recursive case
    array.delete_at(-1)		#we store/remove the last value, so that we can properly modify the array and reach base case
    return x + recur_sum(array)
  end

end
[/code]

This one, finally gets it just right. It checks to see if the array is empty, there is no major unnecessary checking of cases, and it uses delete_at(-1) to remove the value at the last index of the array, and will ONLY remove THAT value.

To ensure I didn't get any nil values/errors, I wrote a quick script to put 100 random values into an array, and then passed that array to the recur_sum(arr) function, which returned back with no errors, and the proper sum.
Things I Came Across/Errors I Kept Getting/Things I Learned
1. One of the most common errors was that I was passing the function/method 'nil'. This oftentimes came about when I was at the end of the array/the array had nothing left in it, and the method didn't know what to do. To solve this I used the array.empty? method in Ruby and returned 0 if it was. In Python through the code I've read, I've generally seen people use len(arr) to check the length of the array being utilized.
2. 'Stack too deep' errors were also common, which is just another way to say that you're creating an infinite loop/not reaching your base case to end the recursion.
3. Writing out IN FULL SENTENCES what you want each line to accomplish is extremely helpful for me, because it forces me to think through what is actually being done. 'Rubber Duck Debugging' can also help here (explain what you want to do to a rubber duck/in animate object)
4. If you can't figure out what's going wrong, cut scope, and get one small peice working and then build on that.
Sources/Help used
[1] http://stackoverflow.com/questions/15688019/recursion-versus-iteration
[2]https://www.leighhalliday.com/recursion-in-ruby
[3]http://stackoverflow.com/questions/6418017/what-is-recursion-and-how-does-it-work

[4] https://www.natashatherobot.com/recursion-factorials-fibonacci-ruby/

&nbsp;
