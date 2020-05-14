=begin
# 1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
 
# My Answer
print "Name: "
name = gets.chomp
puts "Hello, #{name}"

# LS Answer
puts "LS Answer"
puts "What is your name?"
name = gets.chomp
puts "Hello " + name
=end
puts "-----------------------------------------------------------"
=begin
# 2. Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

# My Answer
print "Age: "
age = gets.chomp
puts "10yrs: #{age.to_i + 10}, 20yrs: #{age.to_i + 20}, 30yrs: #{age.to_i + 30}, 40yrs: #{age.to_i + 40} "

# LS Answer 

puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age +  10
puts "In 20 years you will be:"
puts age +  20
puts "In 30 years you will be:"
puts age +  30
puts "In 40 years you will be:"
puts age +  40
=end
puts "-----------------------------------------------------------"
=begin
# 3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.

#My Answer

print "Name: "
name = gets.chomp
10.times do |n| 
 puts name
end

# LS Answer

10.times do
  puts name
end
=end
puts "-----------------------------------------------------------"
=begin
# 5. Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x 

# and..

y = 0
3.times do
  y += 1
  z = y
end
puts z

# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?

# My Answer

puts " x = 3 and z = error because z was created in a scope and called outside of the scope"

# LS Answer 
puts "LS"

puts "The first prints 3 to the screen. The second throws an error undefined local variable or method because x is not available as it is created within the scope of the do/end block."
=end
puts "-----------------------------------------------------------"




