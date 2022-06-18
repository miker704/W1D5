
def zip(*arr)
 return arr if arr.length==1
 array=[]
 (0...arr.first.length).each do |i|
    temp=[]
 arr.each do |ele|

 temp.push(ele[i])

 end
 array.push(temp)

 end

 return array
end

#array_1=['a', 'b', 'c'] array_2 =[1, 2, 3] array_3=['w', 'x', 'y']
# array_1=['a', 'b', 'c'] 
# array_2 =[1, 2, 3] 
# array_3=['w', 'x', 'y']
# p zip(array_1)
# p zip(array_1,array_2)
# p zip(array_1,array_2,array_3)


def prizz_proc(arr,prc1,prc2)
 return arr.select{|ele| (prc1.call(ele)||prc2.call(ele)) && !(prc1.call(ele)&&prc2.call(ele))}
end

def  zany_zip(*arr)

sLen=arr.map(&:length).max

(0...sLen).map do |i|
arr.map{|sub| sub[i]}

end


end

array_1 = ['a', 'b', 'c'] 
array_2 = [1, 2, 3] 
array_3 = [11, 13, 15, 17] 
array_4= ['v', 'w', 'x', 'y', 'z'] 

p zany_zip(array_1)
p zany_zip(array_1, array_2)
p zany_zip(array_1, array_2, array_3)

p zany_zip(array_2, array_1)
p zany_zip(array_3, array_2, array_1)
p zany_zip(array_1, array_2, array_3,array_4)




def maximum(arr,&bck)

 return nil if arr.empty?
    max=arr[0]
 arr.each do |i|
    max=i if bck.call(i) >= bck.call(max)
    end
    return max
end


# p maximum([2, 4, -5, 1]) { |n| n * n } 
# p maximum(['potato', 'swimming', 'cat']) { |w| w.length }
# p maximum(['boot', 'cat', 'drop']) { |w| w.length }

def my_group_by(arr,&bck)
 hash=Hash.new([])
 arr.each{|ele| hash[bck.call(ele)]+=[ele]}

 return hash
end


def max_tie_breaker(arr,prc,&bck)

 return nil if arr.empty?

 max=arr[0]
 arr.each do |i|

 res1=bck.call(i)
 resmax=bck.call(max)
 if res1>resmax
 max=i
 elsif resmax==res1  && prc.call(i)>prc.call(max)
    max=i
 end

 end
    return max

end

# array_1 = ['potato', 'swimming', 'cat'] 
# array_2=  ['cat', 'bootcamp', 'swimming', 'ooooo'] 
# array_3=  ['photo','bottle', 'bother'] 
# length = Proc.new { |s| s.length } 
# o_count = Proc.new { |s| s.count('o') } 

# p max_tie_breaker(array_1, o_count, &length) # "swimming"
# p max_tie_breaker(array_2, length, &o_count) # "ooooo"
# p max_tie_breaker(array_3, o_count, &length) # "bottle"
# p max_tie_breaker(array_2, o_count, &length) # "bootcamp"



def silly_syllables(sent)
 return sent.split(" ").map{|word| vowel_count(word)>=2 ?  vowelRem(word) : word}.join(" ")

 end

def vowel_count(word)
 vowels="aeiouAEIOU"

 return word.split("").count{|char|vowels.include?(char)}

 end



def vowelRem(word)
    vowels="aeiouAEIOU"

    i=0
    while i<word.length
    if vowels.include?(word[i])
        break
    end
    i+=1
    end

    j=word.length-1
    while j>=0
        if vowels.include?(word[j])
            break
         end
      j-=1
    end

    return word[i..j]

 end

