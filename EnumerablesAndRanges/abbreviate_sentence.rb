def abbreviate_sentence(sent) # follow the yellow brick road
    arr = sent.split(" ")
    ans = []
    arr.each do |ele| # follow
        if ele.length > 4
            ans << remove_vowels(ele)
        else
            ans << ele
        end
    end
    return ans.join(" ")
end

# split up sent
# enum through
# if word is longer than 4
# remove vowels

def remove_vowels(str) # yellow
    vowel = "aeiou"
    removed = ""
    str.each_char do |char|
        unless vowel.include?(char)
            removed += char
        end
    end
    return removed
end

# each_char in str
# if char == vowel dont shove
# else shove



puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
