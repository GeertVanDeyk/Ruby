# Jay Wengrow - A common-sense guide to data structures and algorithms - ISBN-13: 978-1-68050-722-5
# page 25

def linearSearch (array, searchValue)
    #array must be ordered!!!
    #We iterate through every element in the array
    array.each_with_index do |element, index|
    #If we find the value we're looking for, we return its index:
        if element == searchValue
            return index
    #If we reach an element that is greater than the value
    #we're lookng for, we can exit the loop early:        
        elsif element > searchValue
            break
        end
    end
    #We return nil if we do not find the value within the array:
    return nil
end


if __FILE__ == $0
    myArray = [3, 17, 75, 80, 202]
    myTests = [202, -1, 75 ,3000]
    
    myTests.each do |searchFor|
        if linearSearch(myArray, searchFor).nil? 
            puts "The number #{searchFor} can NOT be found"
        else puts "The number #{searchFor} can be found at index #{linearSearch(myArray, searchFor)}" 
        end
    end
end
   