# Get rid of 11. And append a 3.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
arr_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
arr_3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
arr_4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# My answer

arr.each {|e| if e == 11
    arr.delete(e)
    arr.push(3) 
  end
}
p arr

# or 

arr_2.delete(arr_2.length)

arr_2.push(3)

p arr_2

# LS Answer

# Remove from end of array
arr_3.pop

# Append
arr_3 << 3
# --- or ---
arr_4.push(3)






















