# Suppose you have a hash

h = {a:1, b:2, c:3, d:4}

=begin
1. Get the value of key `:b`.

2. Add to this hash the key:value pair `{e:5}`

3. Remove all key:value pairs whose value is less than 3.5
=end

# My Answer

puts h[:b] # 1

h[:e] = 5 # 2
p h

h.each{|k, v| # 3 
  if v < 3.5
    h.delete(k)
  end
}
 
p h

# LS Answer

h[:b]

h[:e] = 5

  # one line version
  h.delete_if { |k, v| v < 3.5 }

  # multi-line version
  h.delete_if do |k, v|
    v < 3.5
  end
