def double_letter_count(string)
  arr = string.split("")
  count = 0
  arr.each_with_index do |ele, idx|
    if ele == arr[idx - 1]
      count += 1
    end
  end
  return count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1
