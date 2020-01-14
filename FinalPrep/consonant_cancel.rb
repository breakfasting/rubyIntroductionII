def consonant_cancel(sentence) # "down the rabbit hole"
    arr = sentence.split(" ")
    ans = arr.map do |str|
        remove(str)
    end
    return ans.join(" ")
end

def remove(str) # down
    vowel = "aeiou"
    str.each_char.with_index do |char, idx| # o, 1
        if vowel.include?(char)
            return str[idx..-1] # "own"
        end
    end
    return str
end

# split sent using space => arr
# each elements str enum til the first vowel , idx
# splice str removing whats ahead of vowel
# join => str

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
