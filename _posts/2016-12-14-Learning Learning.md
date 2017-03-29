---
layout: post
title: Learning Learning
date: 2016-12-14 12:37
author: techenomics1
comments: true
categories: [Uncategorized]
---


So yesterday I came across some interesting reddit challenges on r/dailyprogrammer [284: Wandering Fingers](https://www.reddit.com/r/dailyprogrammer/comments/53ijnb/20160919_challenge_284_easy_wandering_fingers/).  At first glance I thought I would be able to solve it fairly quickly, however after diving into it, the challenge proved to be a lot tougher than I thought.  I was able to effectively reduce the problem space down with the provided list of words, but getting it further than that was the challenging part for me, and I ended up using one of the solutions that was provided by someone else after about 3 hours of working on the problem.  

```Ruby

input_arr = []
word_arr = []
new_word_arr = []

# Reading input from the file
File.read( "Dict.txt" ).each_line do | line |

  input_arr << line.chop


end

# Splitting the data in the array and flattening it as needed
input_arr.map! { | data | data.to_s.split( " " ) }
input_arr.flatten!



input_arr.delete_if { | word | word.length < 5 }

string_one = "qwertyuytresdftyuioknn"
string_two = "gijakjthoijerjidsdfnokg"


input_arr.each do | word |

  if word[0] == string_one[0] && word[word.length - 1] == string_one[string_one.length - 1]

    word_arr << word


  end

end


word_arr.reject! do | words |

  index = 0
  words.chars.any? do | char |
    index = string_one.index( char, index )
    index.nil?
  end

end

puts word_arr
```

I also need to comment my code more effectively as I'm finding out.  

The other problem that I was able to tackle yesterday was the anagrams challenge 183 from r/dailyprogrammer which cheks if one word is an anagram of another and returns it.  This was challenging in a different way in that I tried to read directly from the file in order to solve the issue, but was unable to do so, but created a function that was able to do the check in less than 45 minutes.  


```Ruby

# Takes 2 words and determines if one is an anagram of the other

# Reddit Challenge 283
# https://www.reddit.com/r/dailyprogrammer/comments/52enht/20160912_challenge_283_easy_anagram_detector/

=begin

Description

An anagram is a form of word play, where you take a word (or set of words) and form a different word (or different set of words) that use the same letters, just rearranged. All words must be valid spelling, and shuffling words around doesn't count.
Some serious word play aficionados find that some anagrams can contain meaning, like "Clint Eastwood" and "Old West Action", or "silent" and "listen".
Someone once said, "All the life's wisdom can be found in anagrams. Anagrams never lie." How they don't lie is beyond me, but there you go.
Punctuation, spaces, and capitalization don't matter, just treat the letters as you would scrabble tiles.
Input Description

You'll be given two words or sets of words separated by a question mark. Your task is to replace the question mark with information about the validity of the anagram. Example:
"Clint Eastwood" ? "Old West Action"
"parliament" ? "partial man"
Output Description

You should replace the question mark with some marker about the validity of the anagram proposed. Example:
"Clint Eastwood" is an anagram of "Old West Action"
"parliament" is NOT an anagram of "partial man"

=end

def anagrams( first_word, second_word )

  ana = true
  first_word = first_word.downcase.delete( " " ).split( "" )
  second_word = second_word.downcase.delete( " " ).split( "" )


  # Loop through each of the 2nd words letters
  second_word.each do | letter |

      # See if the letter in the 2nd word is in the first word
      # If it is, delete that letter at the first index, and then move on
      if first_word.index( letter )

        # Find and delete at specific index in order to find other characters

        x = first_word.find_index( letter )
        first_word.delete_at( x )
      else

        # If a characters is not found set bool to false
        # This could also be short circuited to return false
        puts "#{letter} Was not found so it's NOT an Anagram"
        ana = false
        break

      end


      end


  if ana == true

    puts "ITS AN ANAGRAM"

  else

    puts "NOT AN ANAGRAM"

  end



end

#anagrams( "Clint Eastwood", "Old West Action") Pass
#anagrams( "parliment", "partial man")          Pass
#anagrams( "wisdom", "mid sow")                 Pass
#anagrams( "Reddit", "Gathers No" )             Pass
#anagrams( "Schoolmaster", "The classroom" )    Pass
#anagrams( "Astronmers", "Moon starer" )        Pass
#anagrams( "Vacation Times", "Im Not as Active")Pass
# anagrams( "Dormitory", "Dirty Rooms" ) Pass

```

Overall it was a pretty good day, and I think I'm going to be working on other types of projects all day today using React and jQuery.  