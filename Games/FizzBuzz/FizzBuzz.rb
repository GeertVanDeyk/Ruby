# FizzBuzz:
# List the numbers 1 thru 100 BUT:
# - for numbers divisable by 3, say number - "Fizz"
# - for numbers divisable by 5, say number - "Buzz"
# - for numbers divisable by both 3 and 5, say number - "FizzBuzz"
# - for any other number, just print the number 


(1..100).each do |num, output = ""|
    if num % 3 == 0
        output = "Fizz"
    end    
    if num % 5 == 0
        output += "Buzz"
    end
    puts num.to_s + " - " + output
end    