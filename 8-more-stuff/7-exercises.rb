# 1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

# My Answer

def check(string)
  if string =~ /lab/
    puts string
  else
    puts "no lab"
  end
end

puts check("asdflab")

# LS Answer

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

puts "-------------------------------------"

# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# My Answer

puts "A Error because there is no call"

# LS Answer

puts "Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object."

puts "-----------------------------------------"

# 3. What is exception handling and what problem does it solve?

# My Answer 

puts "makes it so the program doesnt crash with an error and can continue to proceed."

# LS Answer

puts "Exception handling is a structure used to handle the possibility of an error occurring in a program. It is a way of handling the error by changing the flow of control without exiting the program entirely."

puts "--------------------------------------------"

# 4. Modify the code in exercise 2 to make the block execute properly.

# My Answer

def execute(&block)
  puts block.call
end

execute {"This is running inside the method"}

# LS Answer

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

puts "-----------------------------------------------------------"

# 5. Why does the following code...
=begin
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
=end

# Give us the following error when we run it?

=begin
block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end


# My Answer

puts "because there is no ampersand in the parameter"

# LS Answer 

puts "The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter."







































