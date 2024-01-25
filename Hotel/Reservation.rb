require 'date'

class Reservation
    attr_accessor  :klant, :datum_aankomst, :datum_vertrek, :kamer, :betaalwijze, :betaalID, :aantalkamers, :aantalgasten
    def initialize (klant: (Customer), datum_aankomst:, datum_vertrek: , kamer: [], betaalwijze: "", betaalID: "", aantalgasten:2, aantalkamers:1)
        @klant = klant
        @datum_aankomst = Date.parse(datum_aankomst)
        @datum_vertrek = Date.parse(datum_vertrek)
        @kamer = kamer
        @betaalwijze = betaalwijze
        @betaalID = betaalID
        @aantalkamers = aantalkamers
        @aantalgasten = aantalgasten
    end
    
    def to_s 
        puts("RESERVATION OVERVIEW")
        puts("--------------------")
        puts("klant = " + klant.voornaam + "\t" + klant.achternaam)
        puts("reserveert voor" + ((datum_vertrek - datum_aankomst).to_i).to_s + " overnachtingen")
        puts((kamer.length).to_s + " kamer(s)")
        puts("voor " + aantalgasten.to_s + " personen") 
        kamer.each do |k|
            puts ("kamer "  + (k.kamernummer).to_s)
        end    
        puts("datum_aankomst = " + datum_aankomst.to_s)
        puts("datum_vertrek = " + datum_vertrek.to_s)
        if betaalwijze.empty?
        else    
            puts("betaalwijze =" + betaalwijze + " betaalID = " + betaalID)
        end    
    end   
end

if __FILE__ == $0
    r1 = Reservation.new(klant: "KLANT" , datum_aankomst: "2024-01-18", datum_vertrek: "2024-01-19", kamer: "345")
    puts(r1.to_s)
end    