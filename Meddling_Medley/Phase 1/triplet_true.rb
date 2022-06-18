# triplet_true?
# Write a method triplet_true? that accepts a string as an 
# argument and returns a boolean indicating whether or not 
# the string contains three of the same character consecutively.

# Examples


def triplet_true(str)
streak=1
i=0
while(i<str.length)
if str[i]==str[i+1]
    
    streak+=1
elsif str[i]!=str[i+1]
streak=1
end
if(streak==3)
break
end

    i+=1
end

return false if streak !=3 
return true
end

p triplet_true('caaabb')        # true
p triplet_true('terrrrrible')   # true
p triplet_true('runninggg')     # true
p triplet_true('bootcamp')      # false
p triplet_true('e')             # false