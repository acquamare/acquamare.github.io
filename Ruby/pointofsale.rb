class Item
	attr_accessor :price, :name, :in_stock
	def initialize(name, price)
		@name = name
		@price = price.to_f
		@in_stock = 10
	end
end

item1 = Item.new "yam", 2.27
item2 = Item.new "banana", 1.35

class Customer
	attr_accessor :history, :transactions

	def initialize(name)
		@fname = name.slice(0..(name.index(" ")-1))
		@lname = name.slice((name.index(" ")+1)..-1)
		@time = Time.now.year
		@history = []
	end

	def new(transaction)
		@history << transaction
		@transactions = @history.length
		puts "Thanks for being a loyal customer, #{@fname}!\a"
	end

	def info()
		puts "#{@lname}, #{@fname}
		\nMember since: #{@time}
		\nLast transaction: #{@history[-1].time}
		\nTotal transactions: #{@transactions}
		\nTotal amount saved as a member: $50" # Haven't implemented member discounts yet.
		puts
		puts "History:"
		@history.each { |t|
			puts t.time
			t.cart.each { |u|
				puts u.name
			}
			puts "Total: $#{t.total}"
		}
	end
end

patron = Customer.new "Barbara Reynolds"

class Order
	attr_accessor :time, :cart, :total

	def initialize()
		@time = Time.now
		@cart = []
		@items = @cart.length
		@total = 0
	end

	def scan(item)
		puts "#{item.name} scanned"
		@cart << item
		item.in_stock -= 1
		@total += item.price
	end

	def finish()
		puts "Time of Order: #{@time}"
		puts "Customer bought:"
		@cart.each {|i| puts "#{i.name}"}
		puts "Total cost: $#{@total}"
	end
end

purchase = Order.new 

purchase.scan(item1)
purchase.scan(item2)
purchase.finish

patron.new purchase

gets
puts patron.info
=begin
gets.chomp
puts purchase.cart

patron.new purchase.cart.join(', '), purchase.time




class Order 
	attr_accessor :total, :cart, :time, :payment

	def initialize()
		@time = Time.now
		@cart = []
	end

	def add(item)
		@item = 
		@cart << item
	end

	def print(receipt)
	end

end

purchase = Order.new
purchase.add('peas')
purchase.add('melon')

puts purchase.cart
puts purchase.time
=end