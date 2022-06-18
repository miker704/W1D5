# reverberate
# Write a method reverberate that accepts a sentence as an argument. The method should translate the 
# sentence according to the following rules:

# words that are shorter than 3 characters are unchanged
# words that are 3 characters or longer are translated according to the following rules:
# if the word ends with a vowel, simply repeat the word twice (example: 'like'->'likelike')
# if the word ends with a non-vowel, repeat all letters that come after the word's 
#     last vowel, including the last vowel itself (example: 'trash'->'trashash')
# Note that if words are capitalized in the original sentence, they should remain 
# capitalized in the translated sentence. Vowels are the letters a, e, i, o, u.

# Examples

def reverberate(str)
   return str.split(" ").map{|word| word.length>=3 ? wordSlice(word) : word}.join(" ")
end

def wordSlice(word)
vowels="aeiouAEIOU"
newWord=""
return word+word.downcase if vowels.include?(word[-1])
i=word.length-1
while i>=0
if vowels.include?(word[i])
return word+word[i..-1]
end
i-=1
end

end

p reverberate('We like to go running fast') # "We likelike to go runninging fastast"
p reverberate('He cannot find the trash') # "He cannotot findind thethe trashash"
p reverberate('Pasta is my favorite dish') # "Pastapasta is my favoritefavorite dishish"
p reverberate('Her family flew to France') # "Herer familyily flewew to Francefrance"