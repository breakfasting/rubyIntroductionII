def greatest_factor_array(arr)
  return arr.map do |ele|
           # is even?
           if ele % 2 == 0
             greatest_factor(ele)
           else
             ele
           end
         end
end

def greatest_factor(ele)
  greatest = 1
  (1...ele).each do |num|
    if ele % num == 0
      greatest = num
    end
  end
  return greatest
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
