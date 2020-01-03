def vowel_cipher(string)
  vowels = "aeiou"
  shifted = ""
  string.each_char do |char|
    idx = vowels.index(char)
    if idx != nil
      shifted += vowels[(idx + 1) % 5]
    else
      shifted += char
    end
  end
  return shifted
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap
