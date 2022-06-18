# energetic_encoding
# Write a method energetic_encoding that accepts a string 
# and a hash as arguments. The method should return a new string 
# where characters of the original string are replaced with the 
# corresponding values in the hash. If a character is not a key of the hash,
#  then it should be replaced with a question mark ('?'). Space characters (' ') 
#  should remain unchanged.

# Examples

def energetic_encoding(str,hash)
    # return str.split(" ").join("").split("").map{|char| hash.has_key?(char) ? hash[char] : "?"}.join("")

    res=""
    str.each_char do |char|
        hash.key?(char) ? res+=hash[char] : char==' ' ? res+=char : res+='?'
    end

    return res
end


p energetic_encoding('sent sea',
    'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
) # 'zimp ziu'

p energetic_encoding('cat',
    'a'=>'o', 'c'=>'k'
) # 'ko?'

p energetic_encoding('hello world',
    'o'=>'i', 'l'=>'r', 'e'=>'a'
) # '?arri ?i?r?'

p energetic_encoding('bike', {}) # '????' 