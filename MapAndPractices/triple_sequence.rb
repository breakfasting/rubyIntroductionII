def triple_sequence(start, length)
  # arr = (1..length).map.with_index { |ele, idx| start *  3 ** idx }
  arr = []
  arr << start
  i = 1
  while i < length
    arr << arr[i - 1] * 3
    i += 1
  end
  return arr
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts
