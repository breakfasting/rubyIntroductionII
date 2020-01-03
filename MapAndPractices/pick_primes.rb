def pick_primes(numbers)
  return numbers.select { |num| prime?(num) }
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

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts
