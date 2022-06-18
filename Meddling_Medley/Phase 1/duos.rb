# duos
# Write a method duos that accepts a string as an argument 
# and returns the count of the number of times the same
#  character appears consecutively in the given string.

# Examples

def duos(str)
    # count=0
    # str.each_char.with_index{|char,i| str[i]==str[i+1] ? count+=1 : next}
    # return count
    str.each_char.with_index.count{|char,i| str[i]==str[i+1]}
end


p duos('bootcamp')      # 1
p duos('wxxyzz')        # 2
p duos('hoooraay')      # 3
p duos('dinosaurs')     # 0
p duos('e')             # 0