#Singleton Pattern
#The Singleton Pattern is a design pattern in software development 
#that ensures a class has only one instance 
#and provides a global point of access to that instance. 
#It is used to restrict the instantiation of a class to a single object, 
#which can be useful for controlling shared resources or 
#centralizing state and configuration management.
require 'singleton'

class Logger
include Singleton 

  def log(message)
    puts message
  end
end



logger1 = Logger.instance
logger2 = Logger.instance
#logger3 = Logger.new # This generates an error in the singleton pattern, only .instance can be used
logger3 = Logger.instance 


logger1.log("Hello, world!") # Output: Hello, world!
logger2.log("Hello, world!") # Output: Hello, world!
logger3.log("Howdy")
puts logger1 == logger2 # Output: true
puts logger1 == logger3 # Output: true
        