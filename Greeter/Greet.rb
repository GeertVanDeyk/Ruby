require './Greeter'

puts "Who are you?\nPlease enter your names."

names = gets().chomp

if names.include?(',')
    MyName = names.split(",")
else
    MyName = names
end 

Greetings = MegaGreeter.new
Greetings.names = MyName
Greetings.say_hi()
Greetings.say_bye()


