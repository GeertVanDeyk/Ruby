class MegaGreeter
    attr_accessor :names

    #create the object
    def initialize(names = "World")
        @names = names
    end

    #say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            #@names is a list of some kind, iterate!
            @names.each do |name|
                name = name.strip
                puts "Hi #{name}!" 
            end    
        else    
            puts "Hi #{@names}!"
        end
    end

    #say bye to everybody
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
        # Join the list elements with commas
            puts "Goodbye #{@names.join(", ")}. Come back soon."
        else     
            puts "Bye #{@names}! See you soon."
        end
    end
end


if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye
  
    # Change name to be "Zeke"
    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye
  
    # Change the name to an array of names
    mg.names = ["Albert", "Brenda", "Charles",
                "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye
  
    # Change to nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
  end
