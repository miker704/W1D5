# alternating_vowel
# Write a method alternating_vowel that accepts a sentence as an argument. The method should 
# return a new sentence where the words alternate between having their first or last vowel removed. 
# For example:

# the 1st word should be missing its first vowel
# the 2nd word should be missing its last vowel
# the 3rd word should be missing its first vowel
# the 4th word should be missing its last vowel
# ... and so on
# Note that words that contain no vowels should remain unchanged. Vowels are the letters a, e, i, o, u.

# Examples


def alternating_vowel(str)
str.split(" ").map.with_index{|word,i| i.even? ? vowelSw(word) : vowelSw(word.reverse).reverse }.join(" ")
end

def vowelSw(word)
vowels="aeiouAEIOU"

word.each_char.with_index do |char,i|
if(vowels.include?(char))
    return word.slice(0...i)+word.slice(i+1..-1);
    end
end
end



p alternating_vowel('panthers are great animals') # "pnthers ar grat animls"
p alternating_vowel('running panthers are epic') # "rnning panthrs re epc"
p alternating_vowel('code properly please') # "cde proprly plase"
p alternating_vowel('my forecast predicts rain today') # "my forecst prdicts ran tday"