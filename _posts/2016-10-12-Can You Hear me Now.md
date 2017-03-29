---
layout: post
title: Can You Hear me Now
date: 2016-10-12 15:08
author: techenomics1
comments: true
categories: [Uncategorized]
---



So I've been working on codefights lately and I came across a problem that was more confusing than I had expected.  


#### Instructions

```
Some phone usage rate may be described as follows:

* first minute of a talk costs min1 cents,
* each minute from the 2nd up to 10th (inclusive) costs min2_10 cents
* each minute after 10th costs min11 cents.
* You have s cents on your account before the call. What is the duration of the longest call (in minutes rounded down to the nearest integer) you can have?

Example

For min1 = 3, min2_10 = 1, min11 = 2 and s = 20, the output should be
phoneCall(min1, min2_10, min11, s) = 14.

Here's why:

the first minute costs 3 cents, which leaves you with 20 - 3 = 17 cents;
the total cost of minutes 2 through 10 is 1 * 9 = 9, so you can talk 9 more minutes and still have 17 - 9 = 8 cents;
each next minute costs 2 cents, which means that you can talk 8 / 2 = 4 more minutes.
Thus, the longest call you can make is 1 + 9 + 4 = 14 minutes long.

```

As the instructions note there are several moving parts and things to keep track of.  Initially I thought I was just keeping track of how much money was left and then returning that value.  After that assumption proved wrong I went back and RTFM.  

For me the biggest challenge was converting between cents and minutes since there is no easy/clean conversion factor.   

While I was able to find a solution, to me it feels very messy and 'kludgy', and I'm wondering what I can do to clean it up.  


#### Implemented Solution


```ruby

def phoneCall(min1, min2_10, min11, s)

    
    s = (s - min1)			# implements the first constraint

    if s == 0				# runs checks and makes sure the input is still valid
        return 1 		
    elsif s < 0
        return 0
    end

    if s <= 0 				# more input/valididty checking here with multiple use cases
        return 10 
    elsif s >= 9
        s = s - ( min2_10 * 9 )             
    else 
        s = ( s / min2_10 ) 
        return ( 1 + s )
    end

    

    
    s = s / min11			# final check and return
    
    return ( 1 + 9 + s )
    
end


```

