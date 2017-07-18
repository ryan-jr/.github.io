---
layout: post
title: Cool new stuff
date: 2017-07-17 23:14
author: techenomics1
comments: true
categories: [Uncategorized]
---

So the last few days have been interesting with some struggles.  

1.  Attempting to work with the Spotify API.

2.  Setting up Django.

3.  Setting up Ruby/Rails.

4.  The power going out.  



So the power went out the other night due to a thunderstorm, which was why I was unable to make a commit.  But before that I was struggling to figure out the Spotify API.  While there is documentation with the Spoitfy API, it's not the best that I've come across, and it even has examples which is nice, but it only uses cURL and Node, when I was hoping to build an API call in vanilla JS.  Before I even got to that part though I was trying to understand authorization, tokens, and how to pass them back and forth between the servers.  

When trying to set up a server I was originally going to use Django, but after working with it a bit, it seemed fairly unintuitive to me so I opted instead to go with Rails.  The issue is though with the latest releases there is some probleme (at least on my Windows machine with min-gw) which gives me a ton of problems with installing.  I then rolled back to previous versions which installed, but then when I tried to start the server it gave me a helper controller error, which is due to Powershell being case sensitive/insensitive.  I worked around that by setting up/starting up the server in command prompt rather than powershell. 