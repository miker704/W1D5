# conjunct_select
# Write a method conjunct_select that accepts an array and one or
#  more procs as arguments. The method should return a new array 
#  containing the elements that return true when passed into all of
#   the given procs.
# basically return the elements that only return true for all the procs 

# Examples

def conjunct_select(arr,*prc)
    return arr.select{|ele| prc.all?{|pc| pc.call(ele)}}
end


is_positive = Proc.new { |n| n > 0 }
is_odd = Proc.new { |n| n.odd? }
less_than_ten = Proc.new { |n| n < 10 }

p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]