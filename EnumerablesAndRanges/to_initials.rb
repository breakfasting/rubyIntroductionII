def to_initials(name)
  initials = ""
  arr = name.split(" ")
  arr.each { |str| initials += str[0] }
  initials
end

puts to_initials("Kelvin Bridges")      #=> "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

# split up the string using " "
# enumerate the array
# take the first char

