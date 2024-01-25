class Address 
    attr_accessor :straat, :huisnummer, :bus, :postnummer, :gemeente, :provincie, :land
    def initialize (straat:, huisnummer:, bus:"",postnummer:, gemeente:,provincie:"",land:)
        @straat = straat
        @huisnummer = huisnummer
        @bus= bus
        @postnummer = postnummer
        @gemeente = gemeente
        @provincie = provincie
        @land = land
    end

    def to_s
        puts("ADRESS OVERVIEW")
        puts("--------------------")
        puts(straat + " " + huisnummer + "/" + bus)
        puts(postnummer + "\t" + gemeente)
        puts(provincie)
        puts(land)
    end
end    


if __FILE__ == $0
    a1 = Address.new(straat: "Jutestraat", huisnummer: "76" , postnummer: "9000", gemeente: "Gent", land: "België")
    puts(a1.to_s)
end    