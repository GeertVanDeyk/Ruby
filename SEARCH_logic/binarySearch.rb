# Jay Wengrow - A common-sense guide to data structures and algorithms - ISBN-13: 978-1-68050-722-5
# page 29

def binarySearch(array, searchValue)
    # First, we establish the lower and upper bounds of where the value
    # we're searching for can be. To start, the lower bound is the first 
    # value in the array, while the upper bound is thez last value
    lowerBound = 0
    upperBound = array.length - 1
    # We begin a loop in which we keep inspecting the middlemost
    # value between the upper and lower bounds:
    while lowerBound <= upperBound do
        # We find the midpoint between the upper and lower bounds:
        # we don't have to worry  about the result being a non-integer
        # since in Ruby, the result of a division of integers will always
        # be rounded down to the nearest integer:
        midPoint = (upperBound + lowerBound)/2
        #We inspect the value at midPoint:
        valueAtMidPoint = array[midPoint]
        # If the value at the midpoint is the one we're looking for, we're done.
        # If not, we change the lower or upper bound based on whether we need
        # to guess higher or lower:
        if searchValue == valueAtMidPoint
            return midPoint
        elsif searchValue < valueAtMidPoint
            upperBound = midPoint - 1
        elsif searchValue > valueAtMidPoint
            lowerBound = midPoint + 1        
        end    
    end
    # If we've narrowed the bounds until they've reached each other,
    # that means that the value we're searching for is not contained
    # within this array:
    return nil
end

if __FILE__ == $0
    myArray = [3, 17, 75, 80, 202]
    myTests = [202, -1, 75 ,3000]
    
    myTests.each do |searchFor|
        if binarySearch(myArray, searchFor).nil? 
            puts "The number #{searchFor} can NOT be found"
        else puts "The number #{searchFor} can be found at index #{binarySearch(myArray, searchFor)}" 
        end
    end
end    