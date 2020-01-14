def anagrams?(word1, word2) # cat , act
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    word1.each_char do |char|
        hash1[char] += 1 # {"c" => 1, "a" => 1}
    end

    word2.each_char do |char|
        hash2[char] += 1
    end

    return hash1 == hash2
end

# enum through both words
# make hashes
# compare the hashes

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
