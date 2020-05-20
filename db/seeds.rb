# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# vehicle1 = Vehicle.create!(user_id:1,license_plate:"SFX1386H", vehicle_model:"Honda")
# vehicle2a = Vehicle.create!(user_id:2, license_plate:"SJG6768Z", vehicle_model:"Toyota")
# vehicle2b = Vehicle.create!(user_id:2,license_plate:"SGP2756Y", vehicle_model:"Mercedes")

# ascencio = Carpark.create(
#   :location => 'Ascencio', :totallots => 10, :photo_url=> 'http://i.huffpost.com/gen/1952378/images/o-WEIRD-AL-facebook.jpg'
# )


regency = Carpark.create(
  :location => 'Regency', :totallots => 10, :photo_url=> 'http://www.gannett-cdn.com/-mm-/b0ad212381eab60e31d1f067f1c478cea741469a/c=0-10-3443-1963&r=x1683&c=3200x1680/local/-/media/USATODAY/GenericImages/2014/03/31//1396298223000-KISS-KISS-BAND-JY-0718-62187918.jpg'
)


kovan = Carpark.create(
  :location => 'Kovan Market', :totallots => 10, :photo_url=> 'http://www.gannett-cdn.com/-mm-/b0ad212381eab60e31d1f067f1c478cea741469a/c=0-10-3443-1963&r=x1683&c=3200x1680/local/-/media/USATODAY/GenericImages/2014/03/31//1396298223000-KISS-KISS-BAND-JY-0718-62187918.jpg'
)


jurongpoint = Carpark.create(
  :location => 'Jurong Point', :totallots => 10, :photo_url=> 'http://www.gannett-cdn.com/-mm-/b0ad212381eab60e31d1f067f1c478cea741469a/c=0-10-3443-1963&r=x1683&c=3200x1680/local/-/media/USATODAY/GenericImages/2014/03/31//1396298223000-KISS-KISS-BAND-JY-0718-62187918.jpg'
)




carparks = Carpark.all
carparks.each do |carpark|

    carpark.lot.create({lotNumber: 'R1'})
    carpark.lot.create({lotNumber: 'R2'})
    carpark.lot.create({lotNumber: 'R3'})
    carpark.lot.create({lotNumber: 'R4'})
    carpark.lot.create({lotNumber: 'R5'})
    carpark.lot.create({lotNumber: 'R6'})
    carpark.lot.create({lotNumber: 'R7'})
    carpark.lot.create({lotNumber: 'R8'})
    carpark.lot.create({lotNumber: 'R9'})
    carpark.lot.create({lotNumber: 'R10'})
end


#  rafflesplace = Region.create(
#    :regionname => 'Raffles Place', :postalcode => '01'
# )

#  cecil = Region.create(
#    :regionname => 'Cecil', :postalcode => '02'
# )

#   marina1 = Region.create(
#    :regionname => 'Marina 1', :postalcode => '03'
# )
#   marina2 = Region.create(
#    :regionname => 'Marina 2', :postalcode => '04'
# )

#   peoplepark1 = Region.create(
#    :regionname => 'People Park 1', :postalcode => '05'
# )
#   peoplepark2 = Region.create(
#    :regionname => 'People Park 2', :postalcode => '06'
# )

#   anson = Region.create(
#    :regionname => 'Anson', :postalcode => '07'
# )
#   tanjongPagar = Region.create(
#    :regionname => 'Tanjong Pagar', :postalcode => '08'
# )