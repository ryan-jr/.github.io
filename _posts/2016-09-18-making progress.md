---
layout: post
title: making progress
date: 2016-09-18 11:32
author: techenomics1
comments: true
categories: [Uncategorized]
---

Ok, so I'm still recovering from #GithubUniverse, and there certainly is a post coming up about that later, but for right now, let's get back to what this is all about: 

CODE!

# First Things First 

Ok, so not quite code, but lately (and a recurring theme here), is how difficult it is to juggle so many things at once.  So lately I've been trying to do FCC, learn Python through MIT's EDx course, and do the Odin Project.  All of this while working 2 jobs.  Needless to say I've been spread pretty thin.  So how I'm reprioritizing things is through what I think provides the best ROI.  I'm cutting MIT's EDx course, doing Learn Python the Hard Way for an hour each day, FCC for an hour each day, and the rest of the time doing TOP.  For me that's a reasonable balance.  

# On to the Code

Ok, so I've been on [Ruby Programming >> Basic Ruby >> Project: Building Blocks](http://www.theodinproject.com/ruby-programming/building-blocks), as of late, specifically I've been stuck on the 'substrings' assignment.  I've finally gotten through most of it/have a halfway decent (partial) solution, so I figured I would post it here.  

```ruby 

def single_word(arr, word, together, dict)


word.each do | ltr |
	
	together << ltr
	letter = ltr.to_s

	if arr.index(together.join)
		dict[together.join] += 1
	elsif arr.index(letter)
		dict[letter] += 1
	end 
	
end 


end

def multiple_words(arr, words, together, dict)
	letter_arr = []
	word_arr = []
	ctr = 0 
	
	words.each do | word |
		puts word.class
 		lets = word.split("")
 		puts lets 
 		puts lets.class
			lets.each do | ltr |
				together << ltr 
				letter = ltr.to_s 
				
				if arr.index(together.join)
					dict[together.join] += 1 
				elsif arr.index(letter)
					dict[letter] += 1 
				end
				
			end
			
			together.clear
			puts "This is together after clearing the array"
			puts together
	end
end 	
arr = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input = "howdy partner, sit down! how's it going?"

dict = Hash.new(0)
together = []
word = input.split("")


if word.include?(" ") == false
	single_word(arr, word, together, dict)

else
	words = input.split(" ")
	multiple_words(arr, words, together, dict)
end
puts dict
```

As you can see there's a lot going on here, but basically in plain english we take in a string of word(s), compare them to a dictionary and spit out how many times each string occured in the dictionary.  

Or as TOP puts it:

> Implement a method #substrings that takes a word as the first argument > and then an array of valid substrings (your dictionary) as the second > argument. It should return a hash listing each substring (case > insensitive) that was found in the original string and how many times it > was found.


An example output:

    > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

    > substrings("below", dictionary)
    => {"below"=>1, "low"=>1}
	
	
So my solution is certainly NOT perfect, it's messy, doesn't have comments yet, and still misses substrings within each string (the prime example being own from the dictionary above given the input string "howdy partner, sit down how's it going?")

So while my method passes at 90% it's not 100% yet, but I spent about 30 hours on this code, and didn't move on to the more advanced ruby building blocks projects until I got this one done.  I also made sure not to look at others' code until I had something viable, but looking at other code has been extremely helpful/useful for learning, even if it's not commented well (not that I have any right to complain on that front).  Even while writing this I'm thinking of different ways to refactor/implement a better solution.  

The key takeaway from this is that I still have a lot of Ruby left to learn, should probably learn dictiionaries/hashes better, and become more framiliar with the included Ruby methods.  

