def insertionSort (array)
    array.each_with_index do |tempValue, index|
        if index > 0
            position = index - 1
            while position >= 0
                if array[position] > tempValue
                    array[position + 1] = array[position]
                    position-=1
                else break    
                end        
            end
            array[position + 1] = tempValue     
        end
    end
    return array    
end    

if __FILE__ == $0
    myArray = [
     [3, 17, 75, 80, 202],
     [202, 80, 75, 17, 3],
     [17, 80, 3, 202, 75]
    ]

    myArray.each do |array|
        puts "#{insertionSort(array)}"
    end
end    