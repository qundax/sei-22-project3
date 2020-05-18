# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

vehicle1 = Vehicle.create!(license_plate:"SFX1386H", vehicle_model:"Honda")
vehicle2 = Vehicle.create!(license_plate:"SJG6768Z", vehicle_model:"Toyota")
vehicle3 = Vehicle.create!(license_plate:"SGP2756Y", vehicle_model:"Mercedes")

#vehicle1 = Vehicle.create!(user_id:1,license_plate:"SFX1386H", vehicle_model:"Honda")
#vehicle2 = Vehicle.create!(user_id:2, license_plate:"SJG6768Z", vehicle_model:"Toyota")
#vehicle3 = Vehicle.create!(user_id:3,license_plate:"SGP2756Y", vehicle_model:"Mercedes")