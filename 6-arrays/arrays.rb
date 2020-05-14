# 1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

#My Answer
if arr.include?(number)
  print "yes"
else 
  print "no"
end

#LS Answer

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

puts "--------------------------------------------"

# 2. What will the following programs return? What is the value of arr after each?
=begin
require 'pry'
arr = ["b", "a"]
binding.pry
arr = arr.product(Array(1..3))
puts "Answer 1 [[b, 1], [b, 2], [b, 3], [a, 1], [a, 2], [a, 3]]"
binding.pry
arr.first.delete(arr.first.last)
binding.pry

arr = ["b", "a"]
binding.pry
arr = arr.product([Array(1..3)])
puts "Answer 2 [['b', [1, 2, 3]], ['a', [1, 2, 3]]]"
binding.pry
arr.first.delete(arr.first.last)
binding.pry
=end
# My Answer 

puts "1. [b, 2], [b, 3], [a, 1], [a, 2], [a, 3]"

puts "2. ['a', [1, 2, 3]]"

#LSS Answer
=begin
puts "1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

      2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]"
=end
puts "--------------------------------------------"

# 3. How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

# My Answer

puts arr[1][0]

# LS Answer

puts "LS"

puts arr.last.first

puts "--------------------------------------------"

# 4. What does each method return in the following example?
=begin
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)

2. arr.index[5]

3. arr[5]
=end
# My answer

puts "3, error, 8"

#LS Answer

puts "1. 3
2. NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
  from (irb):81
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
3. 8"

puts "--------------------------------------------"

# 5. What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

#My Answer

puts "e, A, nil"

#LS Answer

puts "a = 'e'
b = 'A'
c = nil"

puts "--------------------------------------------"

# 6. You run the following code...
=begin
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'
=end
# My Answer
=begin
names[3] = 'jody'

# or

names.delete("margaret")
names.push('jody')

# LS Answer

puts "You are attempting to set the value of an item in an array using a string as the key. Arrays are indexed with integers, not strings. You would modify the array by doing the following:

names[3] = 'jody'   # => ["bob", "joe", "susan", "jody"]"
=end

puts "--------------------------------------------"

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = ["a", "b", "c"]

# My Answer

arr.each_with_index{|k, v| puts "key: #{k}, value #{v}"}

# LS School

puts "LS"

top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castlevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end

puts "--------------------------------------------"

# 8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [1, 2, 3, 4, 5]

#My answer

new = arr.map{|n| n + 2}
p "new: #{new}, og: #{arr}" 

# LS Answer

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

# or

arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |n|
  n + 2
end

p arr
p new_arr

puts "--------------------------------------------"
