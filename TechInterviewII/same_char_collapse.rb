def same_char_collapse(str)
  # while collapsible
  # iterate through the string
  # find str[i-1] == str[i]
  # set string = str(removed two of the same char) using array slicing

  collapsible = true
  while collapsible
    collapsible = false
    i = 1
    while i < str.length #zzzxaaxy
      if str[i] == str[i - 1]
        str = str[0...i - 1] + str[i + 1..-1] #zxaaxy
        collapsible = true
      end
      i += 1
    end
    if !collapsible
      return str
    end
  end
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
