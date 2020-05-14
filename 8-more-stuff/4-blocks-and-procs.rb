# 1) Blocks, like parameters, can be passed into a method just like normal variables. This isn't incredibly hard, and it's very powerful.

def take_block(&block) #The ampersand (&) tells us that the argument is a block.
  block.call
end

take_block do
  puts "Block being called in the method!"
end

# 2) more complex. Say we wanted to pass an argument to the method as well.

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# 3) Procs are blocks that are wrapped in a proc object and stored in a variable to be passed around. This is how you define a proc.

talk = Proc.new do
  puts "I am talking."
end

talk.call

# Procs can also take arguments if specified.

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

# Procs can be passed into methods

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

# Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.
