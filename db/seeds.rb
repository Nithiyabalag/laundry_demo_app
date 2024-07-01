# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
Cosm.create(id: "1",name: "Lipstick",  price: 15.99)
Cosm.create(id: "2",name: "Eyeshadow Palette", price: 29.99)
Cosm.create(id: "3",name: "LipBalm", price: 6.99)
Cosm.create(id: "4",name: "Kajal",price: 10.00)
Cosm.create(id: "5",name: "Lipliner", price: 15.00)
Cosm.create(id: "6",name: "Mascara",  price: 18.99)
Cosm.create(id: "7",name:  "Toner", price: 36.50)
Cosm.create(id: "8",name: "Foundation", price: 25.00)
Cosm.create(id: "9",name: "Prime", price: 35.99)
Cosm.create(id: "10",name: "Eyebrow",price: 9.99)

