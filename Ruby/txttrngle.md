## Text Triangle

*Have you ever seen those comments on Youtube where each line is an additional character and boomerangs back to one? Well, now it's easy to make them! Just run this Ruby code and it will print it out.*

```ruby
print "Enter your text: "
text = gets.chomp
puts 
line = text.length
total_lines = 0

n = 0

print "text file name? leave blank for default:"
file = gets.chomp

if file == ""
	file = "texttriangle.txt"
end

doc = open(file, 'w')

until n == line
	puts text[0,n+1]
	doc.write(text[0,n+1] + "\n")
	n += 1
	total_lines += 1
end

until n == 0
	puts text[0,n-1]
	doc.write(text[0,n-1] + "\n")
	n -= 1
	total_lines += 1
end

doc.close

total_lines -= 1

puts total_lines.to_s + " total lines"
```