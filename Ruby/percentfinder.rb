list = Array.new

print "total?"
total = gets.chomp.to_f

puts "type count and press enter for each item. Hit enter when done."
input = gets.chomp

until input == ""
	item = (input.to_f / total) * 100
	list<< (item.to_s + "%")
	input = gets.chomp
end

puts list