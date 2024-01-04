class Square 

    attr_accessor :side_length

    def initialize (side_length)
        @side_length = side_length
    end 
    
    # def side_length?
    #     return @side_length
    # end
    
    # def side_length!(side_length)
    #     @side_length = side_length
    # end
    
    def perimeter?
        return @side_length * 4 
    end 
    
    def area?
        return @side_length ** 2
    end

    def to_s 
        return "Side_length : #{@side_length}\nPerimeter : #{perimeter?}\nArea : #{area?}"
    end
    
    def draw
        puts "*" * @side_length
        (@side_length - 2).times do
           puts "*" + " " * (@side_length - 2) + "*"    
        end    
        puts "*" * @side_length
    end

end    


my_square = Square.new(5)
puts my_square
puts my_square.inspect
puts my_square.side_length
my_square.side_length = 20
puts my_square.side_length
puts my_square.perimeter?
puts my_square.area?
puts my_square.to_s
puts my_square.draw