# Jay Wengrow - A common-sense guide to data structures and algorithms - ISBN-13: 978-1-68050-722-5
# page 
#A Queue is an array that only allows for FIFO processing (e.g. like a "Queue" of people)

class GVDQueue
    def initialize
        @data = [] # an array is used as the base for a Queue 
    end
    def enqueue element
        @data << element
    end
    def dequeue
        @data.shift
    end
    def read
        @data.first
    end     
end

if __FILE__ == $0

    class Person
        attr_accessor :personalData
       def initialize()
           @personalData = {}
           @personalData["id"] = Person.setPersonId   
       end
   
       private
       def self.setPersonId # This generates a running ID for the class person
           if @personID.nil? 
               @personID = 0
           end    
           return @personID +=1
       end
    end

    Person1 = Person.new
    Person2 = Person.new
    Person3 = Person.new
    Person4 = Person.new
    Person1.personalData["name"] = "Geert"
    Person2.personalData["name"] = "Kathleen"
    Person3.personalData["name"] = "Jens"
    Person4.personalData["name"] = "Isaura"

    myQueue = GVDQueue.new
    myQueue.enqueue(Person2)    
    myQueue.enqueue(Person4)
    myQueue.enqueue(Person3)
    myQueue.enqueue(Person1)

    while true
        personGoingOut = myQueue.dequeue
        break if !personGoingOut; 
        puts "The person with ID #{personGoingOut.personalData["id"]} named #{personGoingOut.personalData["name"]} is leaving."  
    end     
end    