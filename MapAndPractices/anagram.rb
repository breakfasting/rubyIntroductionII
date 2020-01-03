def anagrams?(word1, word2)
  return word_count(word1) == word_count(word2)
end

def word_count(word)
  count = Hash.new(0)
  word.each_char { |char| count[char] += 1 }
  return count
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
