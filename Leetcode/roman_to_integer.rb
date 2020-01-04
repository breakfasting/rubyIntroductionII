# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }
  sum = 0
  length = s.length - 1
  s.each_char.with_index do |char, idx|
    val = roman[char]
    if idx == length
      sum += val
    else
      if val < roman[s[idx + 1]]
        sum -= val
      else
        sum += val
      end
    end
  end
  return sum
end

# roman_to_int("III")
