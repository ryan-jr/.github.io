---
layout: post
title: My First Rails App
date: 2016-07-23 11:19
author: techenomics1
comments: true
categories: [Uncategorized]
---
Ok, so after about 6 hours of trying(no joke), I finally created my first Rails app:
<img class="alignnone size-full wp-image-292" src="https://techenomicsblog.files.wordpress.com/2016/07/rails.jpg" alt="Rails" width="331" height="292" />

That's it, a simple bookmarking app, but I couldn't be more happy to have finally completed it.  I'll walk through the steps and troubleshooting I had to go through starting with last night, taking a break, and then completing it tonight.

1.  Read stuff on The Odin Project's
<a href="http://www.theodinproject.com/web-development-101">Web Development 101</a> &gt;&gt; <a href="http://www.theodinproject.com/web-development-101#section-web-development-frameworks">Web Development Frameworks</a> &gt;&gt; 1: Introduction to Frameworks and under 'The Assignment' is a link to:
(http://www.wired.com/2010/02/get_started_with_web_frameworks/)

2.  At the bottom of the article is a link to
(http://www.wired.com/2010/02/Ruby_on_Rails_for_Beginners)

Think to self: 'Well I'm about to start the section on Rails, and this shouldn't take that long'.  Oh, how wrong I was.

3.  Start reading 'Rails for Beginners' and come to the section where the describe how to create a Rails app and that there needs to be a MySQL database.

4.  Realize that you don't have MySQL on your laptop and search Google trying to find MySQL.

5.  Realize that you only installed part of the package you needed to get MySQL up and running, and that you don't have access to the command line interface(cli) and other parts you need, since you only got the MySQL utilities.

(https://dev.mysql.com/downloads/utilities/)

6.  Install the correct version/MySQL package.

7.  Fire up the MySQL cli and create the database, while realizing that the commands that the website is giving you are out of date, and having to search around for the correct ones (instead of USE DATABASE xyz; it is now USE xyz; )

8.  Create the basic file directory with the descriptive name of whatever app it is that you want to create in the directory that you want to create it(rails bookmarker), but not before spending 5 minutes figuring out that they want you to type the 'rails' command into the command line and that doing so creates a whole set of files.

9.  Try and figure out what(and where) this 'YAML file' that the article is talking about is about/is at.  You find it, only to realize that you don't know how to open it, spend time Googling how to open it, and are able to find out pretty quickly that you can open it in notepad++

10.  Realize that the YAML file that is in the article, looks nothing like what you have in front of you, and is maybe missing some things.

My YAML file (localhost)
[code language="Ruby"]
default: &amp;default
adapter: mysql2
pool: 5
timeout: 5000
database: bookmarker
host: localhost
username: hunter2
password:hunter2
socket: /tmp/mysql.sock
[/code]

Article YAML file:
<pre class="brush: js">development: adapter:mysql database:bookmarker host:localhost username:root password:''s3cr3t''</pre>
11.  Type in
&gt;rails server
from the command line and spin up the localhost:3000 server, navigate to it, only to get a database error message.

Repeat the above step for 5+ hours...

Looking through my history I found about 40 different StackOverflow threads that I consulted and about a half dozen other sites that contributed as well.  There were a bunch of different error messages concerning everything from adapters, to the password/username, to database migration.  But I finally got it working.

Oh, and the most annoying error has to go to this one:
https://teamtreehouse.com/community/info-ruby-on-rails-error-missing-helper-file

Basically there is an issue with Ruby/Rails spitting out that there is a 'helper.rb' file missing if there is an upper case letter in the filename path.  I had to correct the issue/error I was getting by migrating everything to a different folder.


<strong>Lessons Learned:</strong>
1.  Make sure that the instructions that you're following are up to date/using the same version (or as close as possible) as you are.
2.  StackOverflow/the community is amazing.
3.  Make sure you get the right tools for the job.
4.  Stepping away from the problem and coming back to it is perfectly fine.
5.  Finally finishing the job feels amazing.
6.  There are some really weird errors out there.

Sites/forums used and consulted for help:

1.  http://www.wikihow.com/Create-a-Database-in-MySQL
2.  http://stackoverflow.com/questions/6998705/mysql-problem-error-1064-42000
3.  http://stackoverflow.com/questions/34185976/puzzled-with-mysql-error-1064-42000
4.  http://stackoverflow.com/questions/19294917/error-1064-when-trying-to-add-table
5.  http://stackoverflow.com/questions/5823116/cant-generate-new-app-with-rails-3-0-6-or-3-0-7
6.  http://stackoverflow.com/questions/7546869/problem-running-rails-s
7.  http://stackoverflow.com/questions/5661554/ruby-on-rails-doesnt-create-script-server
8.  http://stackoverflow.com/questions/5411551/what-the-difference-between-mysql-and-mysql2-gem
9.  http://stackoverflow.com/questions/36586191/rails-mysql2error-access-denied-for-user-rootlocalhost-using-password-n
10.  http://stackoverflow.com/questions/19260147/gemloaderror-add-gem-mysql-to-your-gemfile
11.  http://stackoverflow.com/questions/9609985/please-install-mysql-adapter-gem-install-activerecord-mysql-adapter
12.  http://stackoverflow.com/questions/22932282/gemloaderror-for-mysql2-gem-but-its-already-in-gemfile
13.  http://stackoverflow.com/questions/5872264/correct-mysql-configuration-for-ruby-on-rails-database-yml-file
14.  http://stackoverflow.com/questions/19442688/when-i-run-rails-server-it-is-showing-error-about-database-yml
15.  http://stackoverflow.com/questions/12073587/rake-test-creates-yaml-error-how-do-i-fix-this
16.  http://stackoverflow.com/questions/24877656/psych-error-parse-unknown-could-not-find-expected
17.  http://stackoverflow.com/questions/32441291/unknown-could-not-find-expected-while-scanning-a-simple-key-at-line-3-c
18.  http://stackoverflow.com/questions/4980877/rails-error-couldnt-parse-yaml
19.  http://stackoverflow.com/questions/23180650/how-to-solve-error-missing-secret-key-base-for-production-environment-on-h
20.  http://stackoverflow.com/questions/9917225/how-do-i-use-ruby-to-connect-to-a-sqlite3-database-outside-of-rails-as-a-scripti
21.  http://stackoverflow.com/questions/32397607/missing-secret-token-and-secret-key-base-for-development-environment-set
22.  http://stackoverflow.com/questions/29953420/missing-secret-token-and-secret-key-base-rails-4-2-0-with-rvm
23.  http://stackoverflow.com/questions/13726492/production-environment-error
24.  http://stackoverflow.com/questions/29487521/adapternotspecified-database-is-not-configured
25.  http://stackoverflow.com/questions/23336755/activerecordadapternotspecified-database-configuration-does-not-specify-adapte
26.  http://stackoverflow.com/questions/413659/database-configuration-does-not-specify-adapter
27.  http://stackoverflow.com/questions/6801750/problem-with-rake-development-database-is-not-configured
28.  http://stackoverflow.com/questions/24798813/activerecordadapternotfound-database-configuration-specifies-nonexistent-mysq
29.  http://askubuntu.com/questions/699033/error-occuring-while-setting-up-the-mysql-database-in-production
30.  http://stackoverflow.com/questions/17579012/rails-database-configuration-does-not-specify-adapter-what-do-i-do
31.  http://www.redmine.org/boards/1/topics/35414
32.  http://stackoverflow.com/questions/10626822/rails-error-database-configuration-does-not-specify-adapter
33.  http://stackoverflow.com/questions/27871726/strange-error-in-rails-missing-helper
34.  https://gigaom.com/2006/12/28/on-web-app-development-the-sites-folder-and-ruby-on-rails/
35.  http://stackoverflow.com/questions/3724487/rails-root-directory-path
36.  http://stackoverflow.com/questions/27884908/rails-abstractcontrollerhelpersmissinghelpererror-missing-helper-file-app
37.  http://stackoverflow.com/questions/28837717/ruby-on-rails-abstractcontrollerhelpersmissinghelpererror-missing-helper-fi
38.  http://stackoverflow.com/questions/21309901/getting-migrations-are-pending-run-bin-rake-dbmigrate-rails-env-development

&nbsp;

&nbsp;

&nbsp;
