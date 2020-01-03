def same_char_collapse(str)
  if str.length < 2
    return str
  end
  arr = str.split("")
  arr.each.with_index do |ele, i|
    if ele == arr[i + 1]
      arr[i] = ""
      arr[i + 1] = ""
      break
    elsif i == arr.length - 1
        puts "no more"
      return arr.join("")
    end
  end
  ans = arr.join("")
  puts "deleted ->" + ans
  return same_char_collapse(ans)
end

puts same_char_collapse("tcbaabcggta")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

# puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
