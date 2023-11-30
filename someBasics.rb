require 'date' #used in isLeapyear?

###########################
def isLeapYear? (year= DateTime.now.year) 
# returns whether a given year is a leap year.
# defaults to current year
    return (year % 100 == 0) ? (year % 4  == 0) : (year % 4 == 0)
end

puts "#{isLeapYear?(2023)}" 
puts "#{isLeapYear?()}" 
###########################
def whatIsInArray?(array)
    output = []
        output << "---BEGIN REPORT ON CONTENTS >>>>>---------------"
        output << "There are #{array.length} elements in your array"
        output << "------------------------------------------------"
    array.each_with_index do |element, index|
        output << "On index #{index} is the element #{element}."
    end
    output << "--- <<<<< END REPORT ON CONTENTS--------------------"
    return output
end
myArray = [ 'apples', 'baboons','cribs','dulcimers']
whatIsInArray?(myArray).each { |element| puts element}

############################
def determineAverageof (array)
    numberOfElements = array.length()
    sumOfElements = 0
    array.each do |element|
        sumOfElements += element
    end
    return (sumOfElements.to_f/numberOfElements)
end

myNumbers = [1, 2, 3, 4, 5, 6]
puts "The average of #{myNumbers.to_s} is #{determineAverageof(myNumbers)}"
############################


