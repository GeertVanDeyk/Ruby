require_relative 'address' 
require_relative 'hotel'
require_relative 'room'
require_relative 'customer'
require_relative 'reservation'



#Bouw een hotel
MijnHotelAdres = Address.new(straat: "Hintertux", huisnummer:"750", postnummer:"6293",gemeente:"Tux",land:"Oostenrijk")
MijnHotel = Hotel.new(naam: "AlpenHof", adres: MijnHotelAdres, aantalkamers:25)
#Creeer kamers
teller = 0
kamers = []
MijnHotel.aantalkamers.times { teller+=1 ;   kamers << Room.new(nummer: teller)}
kamers.each do |kamer|    
    kamer.to_s
end

# Maak een reservatie

print("Ik stel u graag enkele vragen om uw reservatie te voltooien")
print("\nwelke dag van aankomst heeft u voorzien?")
datum_aankomst = gets().chomp  
print("\nWelke dag van vertrek heeft u in gedachten?")
datum_vertrek = gets().chomp
print("\nmet hoeveel personen zult u komen?")
aantal_personen = gets().chomp.to_i
print("\nHoeveel kamers had u gewenst?")
aantal_kamers = gets().chomp.to_i
print("\nOp welke naam mag ik die reservatie maken?")
klant_naam = gets().chomp
print("\nen uw voornaam?")
klant_voornaam = gets().chomp
print("\nen uw e-mailadres?")
klant_email = gets().chomp
print("\nbedankt voor deze informatie.")
print("\nik maak even uw reservatie aan.")

# Maak klant
klant = Customer.new(
                        achternaam: klant_naam,
                        voornaam: klant_voornaam,
                        emailadres: klant_email
                    )

# vervolledig reservatie
teller = 0
geboekte_kamers = []
aantal_kamers.times {geboekte_kamers << kamers[teller];teller+=1}


reservatie = Reservation.new(
    klant: klant,
    datum_aankomst: datum_aankomst,
    datum_vertrek: datum_vertrek,
    aantalgasten: aantal_personen,
    aantalkamers: aantal_kamers,
    kamer: geboekte_kamers
) 

reservatie.to_s




