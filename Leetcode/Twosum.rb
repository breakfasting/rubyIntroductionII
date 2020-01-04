# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, idx|
        if hash[target - num]
            return [hash[target - num], idx]
        else
            hash[num] = idx
        end
    end
 end

 print two_sum([2, 1, 3, -1, 4], 0)