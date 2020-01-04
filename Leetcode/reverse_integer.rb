# @param {Integer} x
# @return {Integer}
def reverse(x)
  positive = true
  if x < 0
    x = -x
    positive = false
  end
  arr = []
  while x != 0
    arr << x % 10
    x /= 10
  end

  num = 0
  arr.each_with_index do |ele, idx|
    num += ele * 10 ** (arr.length - idx - 1)
  end

  if !positive
    num = -num
  end

  unless -2 ** 31 < num && num < 2 ** 31 - 1
    return 0
  end

  return num
end
