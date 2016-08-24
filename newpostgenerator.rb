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
