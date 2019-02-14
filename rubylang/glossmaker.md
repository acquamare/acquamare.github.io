## Glossary Maker

*Do you ever feel lost when reading a book or article with a surplus of unfamiliar terms? Ever wished you could easily generate a list of the words and phrases and immediately get their meanings? Well, look no further, <a href="glossmaker.rb" download>Glossmaker</a> is here to help! Just run the program and let glossmaker do the work for ya.*

```ruby
all = Array.new

puts "Enter terms (end with ! for Wiki):"
input = gets.chomp.to_s

until input == ""
	if input.end_with?("!")
		input.chop!
		url = input.gsub(" ","_")
		all.push("- [*#{input}*](https://en.wikipedia.org/wiki/#{url})")
	else all.push("- [**#{input}**](https://www.google.com/search?q=dictionary&ie=utf-8&oe=utf-8&client=firefox-b-1-ab#dobs=#{input})")
	end
	input = gets.chomp
end

puts all
print "file: "
file = gets.chomp

while file != "" && file.end_with?(".md") != true
	puts "please specify a markdown file"
	print ">"
	file = gets.chomp
end

if file == ""
	puts "Bye\a"
else
	doc = open(file, 'w')
	print "title: "
	title = gets.chomp
	doc.write("# #{title}\n")
	(0..all.length).each do |i|
		doc.write(all[i])
		doc.write("\n")
	end
	doc.close
	puts "Bye\a"
end
```