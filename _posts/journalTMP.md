### 2017-12-03 09:53, OK, so I wrote a quick shell script to help automate uploading to github for me(I do the work, but I'm terrible about uploading, it's like doing the homework but forgetting to turn it in).  
So now I'm going to write a Python script to export the journal to md file and upload it to pages. 
ECHO is off.
### 2017-12-03 09:58, Oh yeah, so I had to troubleshoot getting the shell script to work.  
It's pretty straightforward in that you write the standard git commands (add, push, etc...) into a notepad file and save it as .sh.  I then used the Windows task scheduler, but for some reason it was failing every time.  After reading through StackOverflow it seemed like it wasn't starting in the right place, even though the script was in the directory/filetree I wanted it to be in. I ended up starting it in the right dir as an option. 
ECHO is off.
### 2017-12-03 11:48, .sh is a weird amalgamation of bash and windows commands, for example there is no pause command in bash, but I can use it in my windows script that is useing the bash date command...oooookkkk  
ECHO is off.
### 2017-12-03 12:07, OK, so bash doesn't like it when you have spaces before/after when you declare a variable...blah  
ECHO is off.
### 2017-12-03 12:42, OK, so bash wouldn't let me input dates as an argument, but jrnl lets me use -today as as a flag/switch sooooo I'll just use that and now I'm using a batch file...this has been a weird rabbit hole.  
ECHO is off.
### 2017-12-03 16:37, Finished up with the batch file, had to figure out type/append >> in batch, in order to copy from a temporary file into the one I want to ultimately upload.   
