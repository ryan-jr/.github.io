


---
layout: post
title: Oh, the Places You'll Go
date: 2016-08-13 12:37
author: techenomics1
comments: true
categories: [Uncategorized]
---


So as of late one of the things that I've taken an interest in is network security.  Luckily there is a fair bit of reading out there on the subject, not nearly as well laid out as The Odin Project is, but still out there.  I'm still working on the Odin Project and am working through Rails for Zombies, but am pursuing this because it strikes me as interesting and another engaging avenue of computer science/programming.  

With so many resources available I started where I usually do with [reddit's netsec](www.reddit.com/r/netsec) community, which has some great resources on their [wiki](https://www.reddit.com/r/netsec/wiki/start).  From Reddit's netsec community I found a [stream](https://www.reddit.com/r/netsec/comments/4wxhj4/gynvaels_hacking_livestream_4_def_con_ctf_xpost/) of the DEFCON CTF(capture the flag), that was really helpful in explaining concepts and exploits.  In the beginning of the stream there were a couple of blogs that were on screen that gave breakdowns of different experiences with the DEFCON CTF including a breakdown from the team that built the Mayhem computer that competed in DEFCON this year [For All Secure](https://blog.forallsecure.com/), as well as from a [PPP](http://dttw.tech/posts/r1rHSpdY) team member.   

From there I looked up the team that built Mayhem, and was curious about their backgrounds/interviews they had done, and luckily they had done a reddit [AMA](https://www.reddit.com/r/IAmA/comments/4x9yn3/iama_mayhem_the_hacking_machine_that_won_darpas/d6dr9w2).  After watching the Youtube video from Tyler Nighswander regarding CTFs/Pico CTF, I decided to give it a try. 

I ended up losing 4 hours, and had a great time.  Pico [CTF](https://2013.picoctf.com) is generally designed for middle school/high school students but is also just really engaging and fun.  I started it up on level 1 and while the initial puzzle was easy enough to figure out the next one was more challenging in having to decrypt/ROT(8) a text file.  I ended up repurposing my old 'simple cipher' program from the r/dailyprogrammer [challenge](https://www.reddit.com/r/dailyprogrammer/comments/pkw2m/2112012_challenge_3_easy/).  



```ruby

=begin
Used for solving the 2013 Pico CTF problem: Read the Manual
https://2013.picoctf.com/compete#ReadTheManual
=end


#for this function arrays were the easiest most straightforward method to solve
#this particular problem
def decrypt(user_input, counter)
#setting the inital condition of the alphabet to check against
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  chars = [",", "(", ")", ";", ":", ".", " "]
#asking the user for input and splitting the characters into an array
#creating an empty array for the new word that will be created

  new_word = []


#iterating through each value in the array
  user_input.each do | letter |


    chars_index = chars.index(letter)
    letter_index = alphabet.index(letter)

    #dealing with the case of whitespace or punctuation characters
    if chars_index == TRUE or letter_index == nil
      new_word << letter
    else
    #dealing with the case that the letter may be z or go beyond the range of the array
      if alphabet.index(letter) >= 25 || alphabet.index(letter) >= 18
        letter_index = alphabet.index(letter) - 26
      end
      new_word << alphabet[letter_index+counter]
    end



  end
  #putting everything back together at the end
  puts "THIS IS YOUR WORD ENCRYPTED: #{new_word.join("")}"
end


#recieving user input
puts "Please Input some text"
user_input = gets.chomp.downcase
user_input = user_input.split("")
counter = 8

#calling the decrypt function
decrypt(user_input, counter)





```

I'm really happy to have found this community and it's supporters.  



