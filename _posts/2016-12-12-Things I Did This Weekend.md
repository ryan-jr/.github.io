---
layout: post
title: Things I this Weekend
date: 2016-12-12 20:55
author: techenomics1
comments: true
categories: [Uncategorized]
---

So this past weekend was pretty busy for me between hosting a Holiday Party, doing a mini-hackathon, and learning some more code, it felt pretty productive overall.  

Also, like I said this weekend I did a mini-hackathon for Code for Sacramento in which I pulled some data from a PDF for the Sacramento SoS program to use/parse on the front end to help those in need get connected with services.  It felt pretty rewarding to be able to make that pull request, you can check out the app at [SacSoS](http://sacsos.org/).  

I have to say that as I spend more time with it, I'm loving Ruby more and more because of how easy it is to read, understand, and parse through once you spend some time with it.  I think this came the most clear today as I did one of the reddit programming challenges/warmups that was able to be solved in 3 lines of code:

```Ruby

# Reddit Daily Programmer 287

def largest_digit( num )

  arr = num.to_s.split( "" )
  arr.map! { | num | num.to_i }
  puts arr.max

end




largest_digit(120)

=begin

https://www.reddit.com/r/dailyprogrammer/comments/56tbds/20161010_challenge_287_easy_kaprekars_routine/



Write a function that, given a 4-digit number, returns the largest digit in that number. Numbers between 0 and 999 are counted as 4-digit numbers with leading 0's.
largest_digit(1234) -> 4
largest_digit(3253) -> 5
largest_digit(9800) -> 9
largest_digit(3333) -> 3
largest_digit(120) -> 2
In the last example, given an input of 120, we treat it as the 4-digit number 0120.

=end
```

All it took was looking up of some of the functions and making sense of what was being done, and I solved it in about 20 minutes or so, which is downright simple when compared to the challenge I attempted yesterday, which I spent 3+ hours on, and only got a partial solution to: 

```Ruby

# Reddit Daily Programmer 290
# Finds Koekpar Numbers from given a range from a file

input_arr = []
k_arr = []

# Reading input from the file
File.read( "input.txt" ).each_line do | line |

  input_arr << line.chop


end

# Splitting the data in the array and flattening it as needed
input_arr.map! { | data | data.to_s.split( " " ) }
input_arr.flatten!

# Going through the aray until its empty
until input_arr.empty? do

  # Setting up the start and end of the ranges
  range_end = input_arr.pop
  range_start = input_arr.pop

  # Initializing the counter to loop through
  ctr = range_start.to_i

  # While loop to iterate through the range
  while ctr <= range_end.to_i

    k_check = ctr ** 2

    # Getting the length of the squared number to split later
    case k_check.to_s.length

      when (1..20)


        # Convert the number to a string and set up to slice it
        k_string = k_check.to_s
        slice_len = k_string.length / 2

        # Slice the first and second half of the string
        f_slice = k_string[0..slice_len-1].to_i
        s_slice = k_string[slice_len..-1].to_i

        # As per Kaprekar numbers the second number cannot be 0
        if s_slice === 0
          ctr += 1
          next

        elsif f_slice + s_slice == ctr

          k_arr << ctr

        end


    end

    ctr += 1

  end

  # Printing the needed info before clearing things and looping again through the array
  print "This is K arr: #{k_arr}"
  puts
  puts range_start
  puts range_end
  k_arr.clear


end

=begin

https://www.reddit.com/r/dailyprogrammer/comments/5aemnn/20161031_challenge_290_easy_kaprekar_numbers/

Explanation/Input Description

In mathematics, a Kaprekar number for a given base is a non-negative integer, the representation of whose square in that base can be split into two parts that add up to the original number again. For instance, 45 is a Kaprekar number, because 452 = 2025 and 20+25 = 45. The Kaprekar numbers are named after D. R. Kaprekar.
I was introduced to this after the recent Kaprekar constant challenge.
For the main challenge we'll only focus on base 10 numbers. For a bonus, see if you can make it work in arbitrary bases.

// Input

Your program will receive two integers per line telling you the start and end of the range to scan, inclusively. Example:


// Sample input:

1 50

// Output:
Your program should emit the Kaprekar numbers in that range. From our example:

// Sample Output:

45




=end

```

For the one above I had to not screw up the indexing on the array (via .pop) which I was able to solve with an until arr.empty? and then I started splitting the numbers in half, which wasn't entirely correct, and still leads to some missing solutions.  I think what I'll have to do is split up each of the numbers, add them, and then join them, which seems like the most straightforward solution, but will also likely lead to incorrect outputs.  

