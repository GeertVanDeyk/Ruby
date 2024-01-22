require 'date'

class Reservation
    attr_accessor  :klant, :datum_aankomst, :datum_vertrek, :kamer
    def initialize (klant: , datum_aankomst:, datum_vertrek: , kamer: )
        @klant = klant
        @datum_aankomst = Date.parse(datum_aankomst)
        @datum_vertrek = Date.parse(datum_vertrek)
        @kamer = kamer
    end
    
    def to_s 
        puts("RESERVATION OVERVIEW")
        puts("--------------------")
        puts("klant = " + klant)
        puts("reserveert")
        puts("kamer = " + kamer)
        puts("datum_aankomst = " + datum_aankomst.to_s)
        puts("datum_vertrek = " + datum_vertrek.to_s)
    end   
end

if __FILE__ == $0
    r1 = Reservation.new(klant: "KLANT" , datum_aankomst: "2024-01-18", datum_vertrek: "2024-01-19", kamer: "345")
    puts(r1.to_s)
end    