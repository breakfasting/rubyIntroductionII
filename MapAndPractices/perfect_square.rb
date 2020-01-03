def perfect_square?(num)
  i = 1
  while i * i <= num
    if i * i == num
      return true
    end
    i += 1
  end
  return false
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true
