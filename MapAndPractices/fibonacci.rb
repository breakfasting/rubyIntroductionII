def fibonacci(length)
  if length == 0
    return []
  elsif length == 1
    return [1]
  else
    arr = [1, 1]
    while arr.length < length
      arr << arr[-2] + arr[-1]
    end
    return arr
  end
end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
