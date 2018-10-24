# FizzBuzz
Here's the original, at 428 bytes, written in Haskell.
```haskell
fizz :: Int -> String
fizz n | n `mod` 15 == 0  = "FizzBuzz"
       | n `mod` 3  == 0  = "Fizz"
       | n `mod` 5  == 0  = "Buzz"
       | otherwise = show n

main :: IO()
main = mapM_ putStrLn $ map fizz [1..100]
```
I wanted to see if I could reduce the size using ruby.
```ruby
def fizz(n) # 392
  (1..n).each do |n|
    if n % 15 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else puts n
    end
  end
end

fizz(100)
```
This was my most successful attempt:
```ruby
def fizz(n) # 326 (or 338 if you don't replace print \n with puts)
  (1..n).each do |n|
    print n if n % 3 !=0 && n % 5 != 0
    print "Fizz" if n % 3 == 0
    print "Buzz" if n % 5 == 0
    print "\n"
  end
end

fizz(100)
```
I started trying arrays.
```ruby
def fizz(n) # 374
  (1..n).each do |n|
    a = [n % 3,n % 5]
    print n if a[0] !=0 && a[1] != 0
    print "Fizz" if a[0] == 0
    print "Buzz" if a[1] == 0
    print "\n"
  end
end

fizz(100)
```
I discovered you can put truth tests in arrays:
```ruby
def fizz(n) #350
  (1..n).each do |n|
    a = [n % 3 == 0, n % 5 == 0]
    print n if !a[0] && !a[1]
    print "Fizz" if a[0]
    print "Buzz" if a[1]
    puts
  end
end

fizz(100)
```
Then I went berserk and tried to combine all that I've learned.
```ruby
def fizz(n) # 538
  (1..n).each do |n|
    a = [(n % 15).zero?, (n % 3).zero?, (n % 5).zero?]
    if a[0]
      print "FizzBuzz"
    elsif a[1] && !a[2]
      print "Fizz"
    elsif a[2] && !a[1]
      print "Buzz"
    else print n
    end
    puts
  end
end

fizz(100)
```

So what's the lesson here? When I started trying new things, I got further away from my goal. However, the new methods I've discovered are actually better in the long run, when the possibilites greatly exceed 4. Learning how to use the fundamental tools (arrays in this case) as many ways as you can will greatly decrease your time spent retyping or, far worse, copying and pasting, code.

Thanks for viewing.

UPDATE: So I googled FizzBuzz and found this neat [walkthrough](https://www.tomdalling.com/blog/software-design/fizzbuzz-in-too-much-detail/) using Ruby. Yeah, I have a lot to learn.