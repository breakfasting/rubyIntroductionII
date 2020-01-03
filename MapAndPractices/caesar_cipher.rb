# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  cipher_arr = alphabet.split("")
  arr = str.split("")
  index = 0
  ans = arr.map do |char|
    index = (cipher_arr.index(char) + num) % 26
    cipher_arr[index]
  end
  return ans.join("")
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
