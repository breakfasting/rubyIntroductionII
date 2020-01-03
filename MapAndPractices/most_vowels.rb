def most_vowels(sentence)
  hash = {}
  arr = sentence.split(" ")
  arr.each do |word|
    vowels = "aeiou"
    count = 0
    word.each_char do |char|
      if vowels.include?(char)
        count += 1
      end
    end
    hash[word] = count
  end
  sorted_arr = hash.sort_by { |k, v| v }
  return sorted_arr[-1][0]
end

print most_vowels("what a wonderful life") #=> "wonderful"
