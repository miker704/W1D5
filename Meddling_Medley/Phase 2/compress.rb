# compress
# Write a method compress that accepts a string as an argument. 
# The method should return a "compressed" version of the 
# string where streaks of consecutive letters are translated
#  to a single appearance of the letter followed by the number of 
#  times it appears in the streak. If a letter does not form a streak 
#  (meaning that it appears alone), then do not add a number after it.


def compress(str)

    # (0..str.length-1).each.with_index do |ele,i|
    
    # end
    newStr=''
    count=1
    (0..str.length-1).each do |ele|
        if str[ele]==str[ele+1]
            count+=1
        else
            
            count==1 ? newStr+=str[ele] : newStr+=str[ele]+count.to_s
            count=1

        end

    end

    return newStr
    
end



p compress('aabbbbc')   # "a2b4c"
p compress('boot')      # "bo2t"
p compress('xxxyxxzzzz')# "x3yx2z4"