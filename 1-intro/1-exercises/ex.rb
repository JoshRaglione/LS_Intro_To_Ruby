# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

# My Answer
first = "Josh" 
last = "Raglione"

puts first + " " + last

# LS Answer
puts "LS" 

puts "Launch" + " School"

puts "----------------------------------------------------"
# "----------------------------------------------------"

#2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

# My Answer
four_digit_n = 2345

thousands = four_digit_n / 1000
hundreds = (four_digit_n % 1000) / 100 
tens = ((four_digit_n % 1000) % 100) / 10
ones = (((four_digit_n % 1000) % 100) % 10) / 1

puts thousands
puts hundreds
puts tens
puts ones

#LS Answer
puts "LS"

thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 100 / 10
ones = 4936 % 10

puts thousands
puts hundreds
puts tens
puts ones

puts "----------------------------------------------------"
# "----------------------------------------------------"

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. 

# My Answer
movies = {
  alice_in_wonderland: 1951,
  dawn_wall: 2018,
  free_solo: 2019
}

movies.each{|k, v| puts "#{k}: #{v}"}

puts "Year: #{movies[:alice_in_wonderland]} Year: #{movies[:dawn_wall]} Year: #{movies[:free_solo]}"


#LS Answer
puts "LS"

movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

movies = { jaws: 1975,
           anchorman: 2004,
           man_of_steel: 2013,
           a_beautiful_mind: 2001,
           the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

 puts "----------------------------------------------------"
# "----------------------------------------------------"




