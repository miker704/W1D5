# silly_talk
# Write a method silly_talk that accepts a sentence as an argument. 
# The method should translate each word of the sentence according to the 
# following rules:

# if the word ends with a vowel, simply repeat that vowel at the end of the word (example: 'code'->'codee')
# if the word ends with a non-vowel, every vowel of the word should be followed by 'b' and
#      that same vowel (example: 'siren'->'sibireben')
# Note that if words are capitalized in the original sentence, they should remain capitalized 
# in the translated sentence. Vowels are the letters a, e, i, o, u.

# Examples
def silly_talk(string)
    return string.split(" ").map{|word|silly_talk_convert(word)}.join(" ")
end

def silly_talk_convert(word)

    vowels="aeiouAEIOU"
    newWrd=""
return word+word[-1] if vowels.include?(word[-1])
word.each_char.with_index do |char,i|
if vowels.include?(char)
    newWrd+=char+'b'+char.downcase
else
    newWrd+=char
end
end

return newWrd
end


p silly_talk('Kids like cats and dogs') # "Kibids likee cabats aband dobogs"
p silly_talk('Stop that scooter') # "Stobop thabat scobooboteber"
p silly_talk('They can code') # "Thebey caban codee"
p silly_talk('He flew to Italy') # "Hee flebew too Ibitabaly"