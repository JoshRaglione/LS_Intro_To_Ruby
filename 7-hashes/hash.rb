# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

#My Answer
require 'pry'
immediate_fam = family.select{|k,v| k == :sisters || k == :brothers}
arr = immediate_fam.values.flatten
p arr

# LS Answer

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr

puts "======================================================="

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

mutate_1 = {
  one: 1,
  two: 2,
  three: 3
}

mutate_2 = {
  four: 4,
  five: 5,
  six: 6
}

non_mutate_1 = {
  one: 1,
  two: 2,
  three: 3
}

non_mutate_2 = {
  four: 4,
  five: 5,
  six: 6
}

# My Answer

puts "'merge!' mutates the string and 'merge' does not"
p "Before 'merge! #{mutate_1}"
mutate_1.merge!(mutate_2)
p "After: #{mutate_1}"

p "Before 'merge' #{non_mutate_1}"
non_mutate_1.merge(non_mutate_2)
p "After: #{non_mutate_1}"

# LS Answer

puts "The difference is merge! modifies permanently, while merge does not."

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}

puts "======================================================="

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# My Answer

puts person.keys
puts person.values
person.select{|k, v| puts "#{k} #{v}"}

# LS Answer

opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

puts "======================================================="

# 4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# My Answer

puts person[:name]

# LS Answer

# person[:name]

puts "======================================================="

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# My Answer

puts person.has_value?("Steve")

# LS Answer
=begin
Solution
has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
=end
puts "======================================================="

# 6. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

# My Answer 

puts "my_hash's key is a symbol and my_hash_2's key is not a symbol and uses a rocket"

# LS Answer

puts "The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key."

puts "======================================================="

# 7. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

=begin
A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
=end 

# My Answer 

puts "B"

# LS Answer

puts "B"

puts "======================================================="

# 8. Challenge: Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

=begin
["demo", "dome", "mode"]
["neon", "none"]
(etc)
=end


# My Answer

p words.group_by{|w| w.chars.sort}.values

# LS Answer
result = {}

words.each{|w|
  k = w.split('').sort.join
  if result.has_key?(k)
    result[k].push(w)
  else
    result[k] = [w]
  end
}

result.each_value{|v|
  puts "---------"
  p v
}

