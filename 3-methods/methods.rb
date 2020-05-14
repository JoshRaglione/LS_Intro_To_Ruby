# 1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

# My Answer
=begin
def greeting(name)
  "hello #{name}"
end

puts greeting("Josh")
 

#LS Answer
puts "LS"
def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting("Bob")
=end

puts"---------------------------------------------------"

# 2. What do the following expressions evaluate to?
=begin
x = 2

puts x = 2

p name = "Joe"

four = "four"

print something = "nothing"

#My Answer
puts "Return, no return, return and print, return, print"

#LS Answer

1. x = 2    # => 2

2. puts x = 2    # => nil

3. p name = "Joe"    # => "Joe"

4. four = "four"    # => "four"

5. print something = "nothing"    # => nil
=end

puts"---------------------------------------------------"

# 3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

#My Answer
=begin
def multiply(x, y)
  x * y
end

p multiply(10023, 23244)

#LS Answer 

def multiply(number1, number2)
  number1 * number2
end

puts multiply(4, 2)
=end

puts"---------------------------------------------------"

# 4. What will the following code print to the screen?
=begin
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# My Answer

puts "return Yipppeeee!!!!!"

#LS Answer

puts "will not print anything"
=end
puts"---------------------------------------------------"

# 5. 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
=begin
 def scream(words)
  words = words + "!!!!"
  puts words
 end

scream "Yippie"
=end
#My Answer

puts "doesnt return only printa"

# LS 
puts "LS" 

puts "doesnt return only print"

puts"---------------------------------------------------"

# 6. What does the following error message tell you?

=begin 
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

#My Answer
=begin
puts "Only had one argument for a method that needs 2"

# LS Answer

puts "LS"

puts "You are calling a method called calculate_product that requires two arguments, but you are only providing one."
=end
puts"---------------------------------------------------"










