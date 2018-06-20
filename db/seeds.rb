# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Regarding User Session
#email form callled _request_from_user to the Curator #https://bootstrapious.com/p/how-to-build-a-working-bootstrap-contact-form


=> Role(id: integer, name: string, created_at: datetime, updated_at: datetime)

artist = Role.create (name: "artist")
curator = Role.create (name: "curator") 
collector = Role.create (name: "collector")


#Regards to Piece and Price_offers
#index
@price_offers = PriceOffer.all 
@pieces = Piece.all


#new
@price_offer = PriceOffer.new
@piece = Piece.new



#AlertNotice

#Make a sentence
puts "Dear Collector, thank you for succesfully offer #{@piece.id} an amount of #{@first_price_offer.id} #{@currency.id}"

#Machine sends a new record pop out with a new offer
first_counter_offer = first_price_offer + 100000


#Make a sentence
puts "Another collector offered #{@first_counter_offer.id} #{@currency.id}.  "


#Regarding Curator Session
#The curator send invitation_form_member

#Regarding Artist Session

#Regarding Collector Session
#Create form called _request_to_collector
#Create form called _request_to_event

