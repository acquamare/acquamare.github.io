## Point of Sale

*Hello there. Are you interested in finding the shortest route through several given points? Here's an unrefined script for that. You might want to make the output look nicer.*
```ruby
class Point
	attr_accessor :x, :y, :disto, :po

	def initialize(po,x,y)
		@po = po.to_s
		@x = x.to_i
		@y = y.to_i
		@disto = (@x**2 + @y**2)**0.5
	end

	def dist(n)
		return ((@x-n.x)**2+(@y-n.y)**2)**0.5
	end
end

def tot(perm)
	total = perm[0].disto + perm[-1].disto
	(0..perm.size-2).each do |i|
		total += perm[i].dist(perm[i+1])
	end
	return total
end


arr = Array.new
arr << Point.new('a',-1,0)
arr << Point.new('b',1,0)
arr << Point.new('c',0,4)
arr << Point.new('d',5,2)

array = arr.permutation.to_a

array.each do |el|
	el.each do |i|
		print i.po
	end
	print ': '
	puts tot(el)
end
```