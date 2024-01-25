class Customer 
    attr_accessor :voornaam, :achternaam, :emailadres, :adres, :email, :bedrijfsnaam, :bedrijfsID
    def initialize (voornaam:, achternaam:, adres: nil, emailadres:, bedrijfsnaam: "-" ,bedrijfsID: "-")
        @voornaam = voornaam
        @achternaam = achternaam
        @adres = adres
        @emailadres = emailadres
        @bedrijfsnaam = bedrijfsnaam
        @bedrijfsID = bedrijfsID
    end
    
    
    
    def to_s 
        puts("CUSTOMER OVERVIEW")
        puts("-----------------")
        puts("voornaam = " + voornaam)
        puts("achternaam =" + achternaam)
        puts("adres = " + adres.to_s)
        puts("emailadres = " + emailadres)
        puts("bedrijfsnaam = " + bedrijfsnaam)
        puts("bedrijfsID = " + bedrijfsID)
    end
end

if __FILE__ == $0
    c1 = Customer.new(voornaam: "Geert", achternaam: "Van Deyk", adres: "Jutestraat 76, 9000, Gent", emailadres:"geertvandeyk@gmail.com")
    puts(c1.to_s)
end    