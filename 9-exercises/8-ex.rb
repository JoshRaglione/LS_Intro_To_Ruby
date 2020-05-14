# Create a Hash, with one key-value pair, using both Ruby syntax styles.

# My Answer

hash_old = {
  :key => "Value"
}

hash_new = {
  key: "Value"
}

p hash_old[:key]
p hash_new[:key]

# LS Answer

hash = {:name => 'bob'} # <= old version
hash = {name: 'bob'} # <= new version

