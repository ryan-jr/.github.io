---
layout: post
title: Confrences-and-Odds-and-ends
date: 2016-08-25 03:59
author: techenomics1
comments: true
categories: [Uncategorized]
---


Recently I've been looking into attending conferences like Github Universe and the Code for America Summit, but they are a tad bit pricy as one might expect (or not).  

In other news these are the things I've been working on over the last few days.  



# Git Best Practices

[Git Cheat Sheet](https://medium.freecodecamp.com/git-cheat-sheet-and-best-practices-c6ce5321f52#.k1nzsz8ty).  This has been invaluable in reinforcing what I've been learning from learngitbranching.js.org, and really gives a good look in how to use Git effectively from day to day.  

# Podcasts!

[Dev.to top 8 Must Listen to Podcasts](https://dev.to/ben/my-eight-must-listen-podcasts).  Really good podcasts in here and I'm a fan of the wit that is on display on their Twitter feed as well.  


# Generally Good Advice
[Good stuff from medium/Free Code Camp](https://medium.freecodecamp.com/is-free-code-camp-enough-to-become-a-successful-developer-f5df0c33caa8#.u2z25b2m6).  Good advice as always, to practice, practice, practice, and set reasonable goals.


# Stuff I've Worked on...

I forget where I read it, but the advice was "if you find yourself doing/repeating something every week, see if you can code a solution."  For me that was putting in the headers and the filename to these blog posts which are specific so that Jekyll can read/get along with them and display them properly.  

```ruby

#Creating a Jekyll post template

#Creating the time variable to reference in the post
t = Time.now
datestamp = t.strftime("%F")
timestamp = t.strftime("%H:%M")

#requesting user input for filename
puts "Please enter a post title with '-' between each word"
posttitle = gets.chomp

#Creating new file with neccessary standards
new_file = File.new("#{datestamp}-#{posttitle}.md", "a")
new_file.puts("---\n")
new_file.puts("layout: post\n")
new_file.puts("title: #{posttitle}\n")
new_file.puts("date: #{datestamp} #{timestamp}\n")
new_file.puts("author: techenomics1\n")
new_file.puts("comments: true\n")
new_file.puts("categories: [Uncategorized]")
new_file.puts("---\n")

new_file.close
```

Basically the file generates the filename, timestamp, and datestamp in the way that Jekyll likes, and saves it as a .md file.  It saves some time here and there and makes things a bit easier.  I also created a similar script for my notes (I'm a huge/obsessive note taker for all of the things I study/learn).  



### Edit:

[Sentdex is always good for learning Python](https://www.youtube.com/user/sentdex)

and

Eli the Computer Guy is good for all kinds of [stuff](https://www.youtube.com/user/elithecomputerguy)

As found on [Reddit](https://www.reddit.com/r/learnprogramming/comments/4zhgmq/what_are_some_programmingrelated_yt_channels_to/)
