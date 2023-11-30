# Jay Wengrow - A common-sense guide to data structures and algorithms - ISBN-13: 978-1-68050-722-5
# page 136
#A stack is an array that only allows for LIFO processing (e.g. like a "stack" of plates)

class Stack
    def initialize
        @data = [] # an array is used as the base for a stack 
    end
    def push (element)
        @data << element
    end
    def pop
        @data.pop
    end
    def read
        @data.last 
    end     
end






if __FILE__ == $0
    emaNym = ""
    myName = "Geert"
    myStack = Stack.new

    myName.each_char do |character|
        myStack.push(character)
    end


    while true
        char = myStack.pop
        if !char 
            break
        else emaNym = emaNym + char
        end    
    end     

    puts "Als je #{myName} omkeert, krijg je #{emaNym}"
end    