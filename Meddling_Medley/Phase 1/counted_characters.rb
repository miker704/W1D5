# counted_characters
# Write a method counted_characters that accepts a string as an argument. 
# The method should return an array containing the characters of the string 
# that appeared more than twice. The characters in the output array should 
# appear 
# in the same order they occur in the input string.

# Examples

def counted_characters(str)
hash=Hash.new(0)

str.each_char{|char|hash[char]+=1}
arr=[]
hash.each{|k,v| arr.push(k) if v>2}
return arr
end


p counted_characters("that's alright folks") # ["t"]
p counted_characters("mississippi") # ["i", "s"]
p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
p counted_characters("runtime") # []