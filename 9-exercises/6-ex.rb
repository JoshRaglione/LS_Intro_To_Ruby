# Get rid of duplicates without specifically removing any one value.

arr = ["a", "a", "b", "b", "c", "c"]
arr_2 = ["a", "a", "b", "b", "c", "c"]
arr_3 = ["a", "a", "b", "b", "c", "c"]
# My Answer

p arr.uniq

# LS Answer

# Does not modify calling object
arr_2.uniq

# Modifies the calling object
arr_3.uniq!
