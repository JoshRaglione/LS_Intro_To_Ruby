# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value greater than 5.

# My Answer

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |e|
  if e > 5
    print e
  end
end


# LS Answer

arr.each { |number| puts number if number > 5 }

# multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end


