# rubyIntroductionII
exercises on the Intro to Ruby Programming II course

# Data Structures
## Array Methods
- array.pop, array.push("last"), array.shift("first"), array.unshift
- array.include?("ele"), array.index("ele")
- array.map { |ele| expression }, array.select { |ele| expression }, array.map.with_index
- array.reverse, array.reverse!

## String Methods
- string.upcase, string.downcase

## Array <> String
- array.length, string.length
- string.split(" "), array.join(" ")

## Hash
- count = Hash.new(0)
- hash.sort_by { |k, v| v }

## Hash Methods
- hash.has_key?("name"), hash.has_value?("wayne")
- hash.each,  

# Enumerators
## Arrays
- array.each
- array.each_with_index

## Strings
- string.each_char
- string.each_char.with_index

## Ranges
- 3.times
- (1..3) => [1,2,3]
- (1...3) => [1,2]