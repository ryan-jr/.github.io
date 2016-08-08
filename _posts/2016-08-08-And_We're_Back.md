---
layout: post
title: Back to our Regularly Scheduled Program
---

So after the better part of a day in wrestling with Jekyll, WordPress, and tempermental database files, I've finally transferred stuff over from my original blog at WordPress.  I love the features that WordPress has for analytics as well as its dashboard, but I love the 'closer to the metal' and more utilitarian feel that the Github Pages/Jekyll combo provides.  I'll likely still post over to WordPress to keep it active and have more of a web presence, but like I said, I love the feel of Github Pages and Jekyll.  


### So Why Did it Take so Long? 

In transferring stuff over, I thought it would be a quick and easy 'one click' port over [Jekyll One Click Exporter](https://wordpress.org/plugins/jekyll-exporter/).  Unfortunatley that assumes that you have WordPress installed, which 1.  I didn't know you could do since I always used it as a web app, and 2.  I simply exported it from the settings page and downloaded everything as a ZIP file, opened it up and put it in a file as an XML.  

Even this presented an issue as even the [Jekyll Importer](http://import.jekyllrb.com/docs/wordpressdotcom/) as suggested on the [Smashing Blog Post](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/) was thouroughly confusing, obfuscacious, and unhelpful.  Luckily one of the things I noticed in the sidebar of the Jekyllrb site was a link to the WordPress.com [Importer](http://import.jekyllrb.com/docs/wordpressdotcom/).  

Side Note: In the jekyllrb instructions it usually points out that people should 'run' something along the lines of $ruby -rubygems -e ... etc... I understand that the '$' denotes that something should be run from the command line/shell, but if you don't tell me what directory I should be in or what files should be present (e.g. WordPressPosts.xml) I'm going to be throughouly confused, and if you're attempting to cater to those who are newbies and wanting to get things set up quickly and easily, lack of such instructions only makes matters worse.  

In the /wordpressdotcom/ page there was a link to an executable [tool for Windows](https://github.com/theaob/wpXml2Jekyll) that was able to take WordPress posts that were exported (from the settings page of a WordPress.com blog) as an XML, and put them into a proper Jekyll/pages markdown format.  That was exactly what I needed and it worked exactly as intended, huge thanks to [Onur Baykal](https://github.com/theaob) on developing/maintaing that tool.  

I take all of the posts that were now converted into proper Jekyll/Pages format and put them in the _posts folder on my local machine (since I had done a clone to put things on to my machine locally), I set up the git remote so that it will point to my pages repository [instructions on setting up a remote](https://help.github.com/articles/adding-a-remote/), and push the changes.  

##Error

It's at this point that I started getting a small torrent of emails from Github informing me 
>The page build failed with the following error:
>There was a YAML syntax error on line 3 column 23 in `<unknown>`: `mapping values are not allowed in this context`. For more >information, see https://help.github.com/articles/page-build-failed-invalid-yaml-in-data-file.

>For information on troubleshooting Jekyll see:

>  https://help.github.com/articles/troubleshooting-jekyll-builds

I got about 15 of those emails all at once...not a great start to building a page.  

I started sluething through and trying to figure things out, but the only thing on line 3 of the _config.yml file was comments, so I figured that wasn't it.  I followed the helpful links that Github provided me that eventually directed me to [yaml lint](http://www.yamllint.com/) which checks yml files for errors.  Every time I copied and pasted my yml file it came back as passing/clean.  After reading through the error message again I decided to see if there were any key mismatches and did a cursory look over the file.  

After looking it over and not seeing any major spacing/tab issues that stood out to me, I looked through again and a few lines caught my eye, notably:

>permalink: /:title/

as well as

>sass:
>style: :expanded # You might prefer to minify using :compressed

and

>gems:
>  -jekyll-sitemap

Permalink stood out because it didn't seem like it would fit with a key/hash pattern in ruby, so I commented it out along with the 'style' line because the #/commenting seemed off, especially with the :compressed at the end.  gems: -jekyll-sitemap was commented out because it didn't seem like it would fit either, and I wasn't sure if '-' was a beginning valid character.  After working through, commiting, uncommenting, pushing the commits, I was able to figure out that it was the last line or gems: -jekyll-sitemap that was causing the issue for whatever reason.  

Having it commented out hasn't noticably affected site/post availability in a meaningful way, but it sure did lead down an awkward and winding road of error sleuthing.  The other thing I was frustrated with was, how relatively unhelpful the original error message was, espcially with the line/column distinction since 'gems' is on line 78 of the yml file.  I am glad that there were other directions, pages, and clues to go off of that Github provided in the automatically generated error email.  

I'm also curious as to why the error popped up in the first place.  The site/yml file had no obvious, overt, or intential changes made to it since the original post I made at ~11pm PST on August 7th.  The change/error came into effect after I attempted to import all of the markdown posts that were converted and put them in my local _posts file and pushed them to the pages repository.  Whatever the error was, I'm glad that it's resolved now.  
