## Text Triangle

*Have you ever seen those comments on Youtube where each line is an additional character and boomerangs back to one? Well, now it's easy to make them! Just run this Ruby code and it will print it out.*

```ruby
print "Enter your text: "
text = gets.chomp
line = text.length

print "text file name? leave blank for default:"
file = gets.chomp
puts

if file == ""
	file = "texttriangle.txt"
end

doc = open(file, 'w')
n = 0

until n == line
	n += 1
	puts text[0,n]
	doc.write(text[0,n] + "\n")
end

until n == 0
	n -= 1
	puts text[0,n]
	doc.write(text[0,n] + "\n")
end

doc.close

total_lines = line * 2 - 1
puts total_lines.to_s + " total lines"
```