# Append 11 to the end of the original array. Prepend 0 to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# My Answer

arr.push(11) # append
arr.unshift(0) # prepend

p arr

# LS Answer

# Append
arr_2.push(11)
# --- or ---
arr_2 << 11

# Prepend
arr_2.unshift(0)

p arr_2

