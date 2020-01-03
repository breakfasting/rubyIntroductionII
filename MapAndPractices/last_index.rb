def last_index(str, char)
  last = 0
  str.each_char.with_index do |c, idx|
    if c == char
      last = idx
    end
  end
  return last
end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m") #=> 7
