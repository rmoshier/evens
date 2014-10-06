# Write a method which takes an array as an argument which
# returns an array containing only the elements with an even index

###################################################
# these are for arrays that give you even numbers #
###################################################

numbers = [ "a", 1, 1, 2, 3, 4, 5]

# def evens(numbers)
#   array = []
#   numbers.each {|n| array << n if n % 2 == 0}
#   return array
# end
#
# def evens(numbers)
#   numbers.map {|n| n if n % 2 == 0}.compact
# end
# with map and collect we will always have the same number of things as the array.
# this is why we get nils when we run this.
# compact strips the nils out of the array, and returns a new array.

###########################################################
# now returning an array with elements with an even index #
###########################################################

# def evens(numbers)
#   array = []
#   numbers.each_with_index {|n , i| array << n if i % 2 == 0 }
#   return array
# end

#######################################################
# do it with a smaller big0 notation (make it faster) #
######################################################

# by doing i += 2, we are skipping over the odd indexes
# therefore, we don't need "if i % 2 == 0"

def evens(numbers)
  array = []
  i = 2
  while i < numbers.length
    array << numbers[i]
    i += 2
  end
  return array
end

# numbers.evens
puts evens(numbers).inspect
