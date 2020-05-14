# exception can be viewed as synonymous with an error.

#"Exception is raised" = Error in code

# developing an eye for scanning and parsing this gibberish output.

def greet(person)
begin
  puts "Hello, " + person
rescue
  puts "error"
end
end

greet("John")
greet(1)


def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(3)
