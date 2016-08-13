---
layout: post
title: Still got It
date: 2016-10-08 08:36
author: techenomics1
comments: true
categories: [Uncategorized]
---

So as of late I feel like I've been concentrating so much on Rails, that I've let my Ruby slip, and while that's probably true, I decided to do a quick test of my skills and see if I could still code 'FizzBuzz' just for fun.  Luckily I was able to do so in about 10 minutes.  

It feels strange on a coding journey, going from knowing something, to feeling like you know nothing, to acomplishing some (minor) things.  



```ruby
#initalize the counter
num = 0

#creating the loop and if statements for the math
while num <= 100
  if num == 0
    puts "num is 0, not divisible by 3 or 5"
  elsif num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
    puts "#{num} is divisible by 3 AND 5"
  elsif num % 3 == 0
    puts "Fizz"
    puts "#{num} is divisible by 3"
  elsif num % 5 == 0
    puts "Buzz"
    puts "#{num} is divisible by 5"
  else
    puts "#{num} is divisible by neither 3 nor 5"
  end

  num += 1
end
```


So far on my coding journey I feel like I'm on the downhill part of the following image:


![Coding Confidence vs Competence, shows a graph with two peaks and a valley in the middle with Confidence on the Y axis and Competence on the X axis.  From left to right the labels on the X axis are: "hand holding honeymoon" (graph origin), "cliff of confusion" (after the graphs first 'peak' and heading into the valley), "desert of despair" (at the lowest point of the graph in the middle), "upswing of awesome" (coming out of the low point on the graph and the graph is increasing again), "Job Ready" (at the far right end at the top of the second peak)](http://s3.amazonaws.com/viking_education/web_development/blog/coding_is_hard_confidence_competence.png)

It's nice to have something to look forward to and know that my skills will only improve.  

