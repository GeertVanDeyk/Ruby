class Room
    attr_accessor :kamernummer, :kamertype, :kamerstatus , :kamernaam, :status_op_datum
    def initialize ( nummer:, type: "onbekend", status: "onbekend", naam: "-", status_op_datum: {})
        @kamernummer = nummer
        @kamerstatus = status
        @kamertype = type
        @kamernaam = naam
        @status_op_datum = status_op_datum
    end

    def to_s
        puts("ROOM OVERVIEW")
        puts("--------------------")
        puts("kamernummer = " + kamernummer.to_s)
        puts("kamernaam = " + kamernaam)
        puts("kamertype = " + kamertype)
        puts("status = " + kamerstatus )
        puts("status op datum = " + status_op_datum.to_s )
    end 


end

if __FILE__ == $0
    r1 = Room.new(nummer: 1)
    puts(r1.to_s)
end    