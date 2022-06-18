# disjunct_select
# Write a method disjunct_select that accepts an array and one or
#  more procs as arguments. The method should return a new array 
#  containing the elements that return true when passed into at least
#   one of the given procs.
# basically return whats true for each but not true for all
# Examples

def disjunct_select(arr,*prc)
    
 return  arr.select{|ele| prc.any?{|pc|  pc.call(ele)}}
    
end
# procs[lf(),cont(),starts(0)]

longer_four = Proc.new { |s| s.length > 4 }
contains_o = Proc.new { |s|  s.include?('o') }
starts_a = Proc.new { |s|  s[0] == 'a' }

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
) # ["apple", "teeming"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o
) # ["dog", "apple", "teeming", "boot"]

p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
    longer_four,
    contains_o,
    starts_a
) # ["ace", "dog", "apple", "teeming", "boot"]