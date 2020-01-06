# @param {String} s
# @return {Boolean}
def is_valid(s)
    hash = {
        "(" => ")",
        "[" => "]",
        "{" => "}"
        }
    arr = []
    input = s.split("")
    input.each do |ele|
        if hash[ele]
            arr.push(ele)
        else
            if ele != hash[arr.pop()]
                return false
            end
        end
    end
    return arr.empty?
end