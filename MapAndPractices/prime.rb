def prime?(num)
  factor = []
  (1..num).each do |number|
    if num % number == 0
      factor << number
    end
  end
  return factor.length == 2
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
