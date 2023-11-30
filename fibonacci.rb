
def fibonacci number, alreadyCalculated={}
# This function calculates the number-th index in the Fibonacci series
# Fibonacci indexes: 0-1-2-3-4-5-6-...
# Fibonacci series : 0-0-1-2-3-5-8-...    
    if alreadyCalculated.has_key?number
    elsif number == 0 || number == 1 then  
        alreadyCalculated[number] = number
    else 
        alreadyCalculated[number] = fibonacci(number - 1, alreadyCalculated) + fibonacci(number - 2, alreadyCalculated) 
    end 
    puts alreadyCalculated
    return alreadyCalculated[number]
end
 

if __FILE__ == $0
    puts "#{fibonacci(2) }"
    
end