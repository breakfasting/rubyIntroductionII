# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def next_level(level)
  sum = []
  level.each_with_index do |ele, idx|
    if idx < level.length - 1
      sum << level[idx] + level[idx + 1]
    end
  end
  return sum
end

def recur(pyra)
  if pyra[0].length == 1
    pyra
  else
    recur(pyra.unshift(next_level(pyra[0])))
  end
end

def pyramid_sum(base)
  pyra = [base]

  return recur(pyra)
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11, 3 ,299, 14]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
