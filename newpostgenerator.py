# Creating a Jekyll post template in Python

from datetime import datetime

#Creating the time variable to reference in the post
t = datetime.now()
timestamp = t.strftime("%Y-%m-%d-%H-%M-%S")

#requesting user input for filename
posttitle = input("Please input a filename: ")

#Creating new file with neccessary standards
newFile = open(timestamp + posttitle + ".md", "a")
newFile.write("---\n")
newFile.write("layout: post\n")
newFile.write("title: " + posttitle + " \n")
newFile.write("date: " + timestamp + "\n")
newFile.write("author: techenomics1\n")
newFile.write("comments: true\n")
newFile.write("categories: [Uncategorized]\n")
newFile.write("---\n")

newFile.close()
