# 1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

=begin
(32 * 4) >= 129
false != !true
true == 4
false == (847 == '874')
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
=end

#My Answer

puts "false, false, true, true, true"

#LS Answer

puts "LS"

puts "false false false true true"

puts "------------------------------------------"

# 2. Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

#My Answer

def all_caps(string)
arr = string.split('')
  if arr.length > 10
    arr.join.upcase
  else
    string
  end
end

puts all_caps "hello"
puts all_caps "hellosdfgsdfgsdfgsfd"

#LS Answer

puts "LS"

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Joe S")
puts caps("Joe Robertson")

puts "------------------------------------------"

# 3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

#My Answer
=begin
def random_number(n)
  if n >=0 && n <= 50
    puts "between 0 and 50"
  elsif n >= 51 && n <= 100
    puts "100 and 51"
  else
    puts "above 100"
  end
end
n = gets.chomp.to_i
random_number(n)
=end
# LS Answer
=begin
puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i
 
if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end
=end

puts "------------------------------------------"

# 4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

=begin 1)
'4' == 4 ? puts("TRUE") : puts("FALSE")
=end

=begin 2)
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
=end

=begin 3)
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
=end

# My Answer

puts "False, did you get it right, Alright now"

# LS Answer
puts "LS"
puts "FALSE, Did you get it right?, Alright now!"

puts "------------------------------------------"

# 5. When you run the following code...
=begin
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

# You get the following error message..

exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
=end

# My Answer

puts "didnt end the method"

#LS Answer
puts "LS"
puts "You get this error because the end in the code above gets matched with the if..else statement. The error message is telling us that the interpreter was expecting the keyword end to close off our equal_to_four method, that end was not found"

puts "------------------------------------------"





























