require "pry"

def find_even_values(src)
  # Given an Array of Arrays of Integers ( [ [10, 11], [99, 50, 3, 4], [23, 41] ] ):
  #
  # Output all even values in each nested array
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][element_index].even?
        puts src[row_index][element_index]
      #p element_index.even?
      #p element_index % 2 == 0
      end
      element_index += 1
      
    end
    row_index +=1
  end

end

# We know thata the src parameter is an array of arrays, so we can use src.count to get the length 
# of the outer array and compare it to row_index when setting up the first while loop. Inside this 
# loop, we create a second variable, element_index. Every time the outer loop runs, element_index is 
# set to 0. When setting up the inner while loop, we use src[row_index].count. This gives us the length 
# of the current nested array we're working with.

# Inside this second while loop, we can access nested values with src[row_index][element_index]. To 
# output only even values, here is where we will put a conditional statement: