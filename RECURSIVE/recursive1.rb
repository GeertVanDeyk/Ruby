def character_count(array)
    # Base Case : empty array
    return 0 if array.empty? 
    return array[0].length + character_count(array[1,array.length - 1])
end

def select_even(array, evenNumbers = [])
    # Base Case : empty array
    return evenNumbers if array.empty?
    if array[0].even? 
        return [array[0]] + select_even(array[1,array.length - 1], evenNumbers)  
    else return select_even(array[1,array.length - 1], evenNumbers)
    end     

end    

if __FILE__ == $0
    myStrings = ["ab", "c", "def", "ghij"]
    puts character_count(myStrings)

    myNumbers = [1, 2, 3, 4, 5]
    puts select_even(myNumbers)

    
end    