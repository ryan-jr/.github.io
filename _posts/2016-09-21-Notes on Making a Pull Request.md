---
layout: post
title: Notes on Making a Pull Request
date: 2016-09-21 08:39
author: techenomics1
comments: true
categories: [Uncategorized]
---


Ok, so I did a test pull request because I wanted to know more about it and how it worked since the biggest thing holding me back right now is actaully implementing a pull request.  [This Page](https://yangsu.github.io/pull-request-tutorial/) was immensely helpful in understanding what a pull request is, how it works, why it matters, and how to implement a pull request(PR).  

NOTE: This post will deal with a PR from a branch within a repository, usually most projects will have you implement a pull request from a forked repository.  

### First Things First: WTF is a Pull Request? 

A pull request is a way of notifying others about changes that you have pushed to a GitHub repository.  

--[GitHub's Using Pull Requests Page](https://help.github.com/articles/using-pull-requests)

### Why it matters:

Many open source projects, and even internal projects, use GitHub to make changes to code and update the code base.  PRs allows project maintainers about changes that have been made, allowing them to review it, and wether or not to accept the changes, or review them/suggest changes, or reject the changes.  


### Steps to Create a Pull Request 

1.  Make sure what we have is up to Date 

This means that we have to make sure to pull from the master repository to make sure that everything we have is up to date.  We do that with the command from the command line:

>git pull origin master

2.  Create a branch 

Now we create a branch.  The easiest way for me to conceptualize a branch in my mind is by thinking of it as essentially a copy of the main/master repository, but with the branch we want to be able to make changes to it.  

We create a branch with: 

> git checkout -b BRANCHNAMEHERE 			# creates the branch
> git push origin BRANCHNAMEHERE			# establishes the repo 


3.  Make changes to the code on the branch 

These changes can be anything from updating the README, adding documentation, changing the way a class or function works, or updating variables names.  The work that you do helps.  

4.  Commit the changes you have made to the branch 

> git add 

> git commit -m "Updating the README for a more clear introduction and instructions"

> git push origin BRANCHNAMEHERE

5.  Make a pull request 

Go to the repo page on github and click the button (currently in the top left) that says "Pull Request".

From here you can pick the branch that you want to have merged using the dropdown.  You should usually leave it the way it is, unless you're working from a remote branch in which case you have to make sure that the master/base repo and the branch you are integrating/merging/pull requesting are correct.  

6.  Fill out the pull request 

Since this is a nice graphical interface we want to add some detail and documentation so that people know what we're changing in the code base.  

For this we want to add a title of what we're merging that is descriptive/helpful, but also concise.  For more detail we use the comment section below that also uses Github flavored Markdown if you want to format your comment(s)/commentary.  

7.  Send the Pull Request 

Now you need to click on the (currently green) button at the bottom that says "Send pull request".  

8.  Congrats!!!

From here the maintainer will either add comments, merge your request, or (in very rare cases), reject the request.  

9.  Clean up 

You can choose to remove/delete the branch that you worked on so that your repo doesn't become full with a ton of forked/branched repos.  You also want to make sure that you're back on your main repo/master branch(or whatever branch you were working on before with):

> git checkout master 

NOTE: git checkout master is an example you may have a different branch name that you want to change to.  

We use the git checkout command because otherwise we may commit changes that we weren't intending.  


