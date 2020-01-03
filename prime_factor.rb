def prime_factors(num)
  factors = (1..num).select { |n| num % n == 0 }
  return factors.select { |n| prime?(n) }
end

def prime?(num)
  count = 0
  (1..num).each do |n|
    if num % n == 0
      count += 1
    end
  end
  return count == 2
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
