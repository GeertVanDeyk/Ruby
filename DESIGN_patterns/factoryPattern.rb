#The Factory pattern is a creational pattern 
#that provides an interface for creating objects in a super class, 
#allowing subclasses to decide which class to instantiate. 
#This pattern is particularly useful when you need to create objects 
#with different properties or behaviors, 
#but you don't want to expose 
#the object creation logic to the client code.

class VehicleFactory
    def self.create_vehicle(type)
      case type
      when :car
        Car.new
      when :truck
        Truck.new
      when :suv
        Suv.new
      else
        raise "Invalid vehicle type"
      end
    end
end
  
  class Vehicle # this is an interface
    def start_engine
      raise NotImplementedError
    end
  end
  
  class Car < Vehicle
    def start_engine
      "Car engine started"
    end
  end
  
  class Truck < Vehicle
    def start_engine
      "Truck engine started"
    end
  end

  class Suv < Vehicle
    def stop_engine
      "SUV engine stopped"
    end
  end
  
  car = VehicleFactory.create_vehicle(:car)
  puts car.start_engine # Output: Car engine started
  
  truck = VehicleFactory.create_vehicle(:truck)
  puts truck.start_engine # Output: Truck engine started
 
  suv = VehicleFactory.create_vehicle(:suv)
  puts suv.stop_engine  # Output: SUV engine stopped
  puts suv.start_engine  #factoryPattern.rb:26:in `start_engine': NotImplementedError (NotImplementedError)