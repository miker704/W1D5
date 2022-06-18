# uncompress
# Write a method uncompress that accepts a 
# string as an argument. The string will be formatted so every 
# letter is followed by a number. The method should return an 
# "uncompressed" version of the string where every letter is repeated
#  multiple times given based on the number that appears directly after
#   the letter.

# Examples
def uncompress(str)
    newStr=""
#     temp=""
#     x=0
#     str.each_char.with_index do |char,i|
#     if i.even?
#         temp=char
#     elsif i.odd?
#         x=char.to_i
#         temp*=x
#         newStr+=temp
#     end

# end
(0...str.length-1).each do |i|
letter=str[i]
num=str[i+1].to_i
newStr+=letter*num
end

return newStr
end

p uncompress('a2b4c1') # 'aabbbbc'
p uncompress('b1o2t1') # 'boot'
p uncompress('x3y1x2z4') # 'xxxyxxzzzz'