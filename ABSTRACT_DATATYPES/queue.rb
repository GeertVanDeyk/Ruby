# Jay Wengrow - A common-sense guide to data structures and algorithms - ISBN-13: 978-1-68050-722-5
# page 
#A Queue is an array that only allows for FIFO processing (e.g. like a "Queue" of people)

class GVDQueue
    def initialize
        @data = [] # an array is used as the base for a Queue 
    end
    def enqueue (element)
        @data << element
    end
    def dequeue
        @data.shift
    end
    def read
        @data.first
    end     
end

class person
    
    def initialize
        @personalData = {}  
    end
end



if __FILE__ == $0
    Person1 = person.new { name=>"Geert"}
    Person2 = { name=>"Kathleen"}
    Person3 = { name=>"Jens"}
    Person4 = { name=>"Isaura"}
    myQueue = GVDQueue.new

    myQueue.enqueue(Person2)    
    myQueue.enqueue(Person4)
    myQueue.enqueue(Person3)
    myQueue.enqueue(Person1)

    while true
        PersonGoingOut = myQueue.dequeue
        if !PersonGoingOut 
            break
        else 
            puts "#{PersonGoingOut[name]} is leaving."
        end    
    end     
end    