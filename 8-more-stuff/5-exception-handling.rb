# 1) Exception handling is a specific process that deals with errors in a manageable and predictable way. Reserve word rescue.

# Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling. The basic structure looks like this.

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# another rescue 

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

# Rescue stops the program from exitting unnesscarily 

# We can also rescue pre-existing errors when we are writing our code.

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
