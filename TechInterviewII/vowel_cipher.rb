def vowel_cipher(string)
  #iterate through the string
  #change each vowel to next one
  vowel = "aeiou"
  new_word = ""
  string.each_char.with_index do |char, i| # bootcamp
    vowel_i = vowel.index(char)
    if  vowel_i != nil
      new_word += vowel[(vowel_i + 1) % 5]
    else
      new_word += char
    end
  end
  return new_word
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
