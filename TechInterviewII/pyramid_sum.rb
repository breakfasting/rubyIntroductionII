# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
    # while the array length isn't 1
    # iterate through the level to sum the next_level
    # unshift the next level to the answer array
    pyramid = []
    pyramid.unshift(base) #[[1, 4, 6]]

   
    while base.length > 1
        i = 1
        # next_level = []
        # while i < base.length
        #     next_level << base [i] + base[i - 1] # [5, 10]
        #     i += 1
        # end

        next_level = []
        (1...base.length).each do |i|
            next_level << base [i] + base[i - 1]
        end

        pyramid.unshift(next_level)
        base = next_level
    end
    return pyramid
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
