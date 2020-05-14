# 1. What does the each method in the following program return after it is finished executing?

=begin 
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
=end

# My answer

puts "2, 3, 4, 5, 6"

# LS Answer

puts "LS"

puts "[1, 2, 3, 4, 5] return original array"

puts"-------------------------------------------"

# 2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

# My answer
=begin
while true
  print "Input: "
  input = gets.chomp
  if input == "STOP"
    break
  end
end
=end
#LS Answer
=begin
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
=end
puts"-------------------------------------------"

# 3. Write a method that counts down to zero using recursion.
require 'pry'
# My Answer

def recursion(n)
  puts n
  if n < 1
    return
  end
  recursion(n - 1)
end
recursion(10)

# LS Answer

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)







