def opposite_count(nums)
    hash = {}
    count = 0
    nums.each do |ele|
        if hash.has_key?(0 - ele)
            count += 1
        else
            hash[ele] = "something"
        end
    end
    return count
end

# make a hash
# enum the arr, add to the hash if doesn't have the key
# if has key add count
# return count

puts opposite_count([2, 5, 11, -5, -2, 7]) # => 2
puts opposite_count([21, -23, 24 - 12, 23]) # => 1
