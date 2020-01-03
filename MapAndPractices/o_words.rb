def o_words(sentence)
  arr = sentence.split(" ")
  return arr.select { |ele| ele.include?("o") }
end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts
