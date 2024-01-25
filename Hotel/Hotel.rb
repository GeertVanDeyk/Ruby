

class Hotel
    attr_accessor :hotelnaam, :hoteladres, :aantalkamers
    def initialize (naam:, adres: nil, aantalkamers: 3)
        @hotelnaam = naam
        @hoteladres = adres
        @aantalkamers = aantalkamers
    end

    def to_s
       puts("HOTEL OVERVIEW")
       puts("--------------------")
       puts("hotelnaam = " + hotelnaam)
       puts("hoteladres = " + hoteladres.to_s)
       puts("Aantal kamers = " + aantalkamers.to_s)
    end     
end

if __FILE__ == $0
    h1 = Hotel.new(naam: "Mijn Hotel")
    puts(h1.to_s)
end   