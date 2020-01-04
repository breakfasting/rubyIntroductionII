# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  pre = ""
  if strs[0] == "" || strs.length == 0
    return pre
  else
    (0..strs[0].length - 1).each do |i|
      strs.each do |str|
        if str[i] != strs[0][i]
          return pre
        end
      end
      pre += strs[0][i]
    end
  end
  return pre
end
