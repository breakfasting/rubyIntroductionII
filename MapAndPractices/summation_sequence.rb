def summation_sequence(start, length)
  arr = []
  arr << start
  while arr.length < length
    sum = 0
    (1..arr[-1]).each { |n| sum += n }
    arr << sum
  end
  return arr
end

print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]
