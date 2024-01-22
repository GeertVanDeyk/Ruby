class Room
    attr_accessor :kamernummer, :kamertype, :kamerstatus , :kamernaam
    def initialize ( nummer:, type: "onbekend", status: "onbekend", naam: "-")
        @kamernummer = nummer
        @kamerstatus = status
        @kamertype = type
        @kamernaam = naam
    end

    def to_s
        puts("ROOM OVERVIEW")
        puts("--------------------")
        puts("kamernummer = " + kamernummer.to_s)
        puts("kamernaam = " + kamernaam)
        puts("kamertype = " + kamertype)
        puts("status = " + kamerstatus )
    end 


end

if __FILE__ == $0
    r1 = Room.new(nummer: 1)
    puts(r1.to_s)
end    