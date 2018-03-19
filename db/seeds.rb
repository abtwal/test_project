# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.create(name: "Belarus")
Country.create(name: "Russia")
Country.create(name: "USA")
City.create(name: "Braslaw", country_id: Country.find_by(name: "Belarus").id)
City.create(name: "Minsk", country_id: Country.find_by(name: "Belarus").id)
City.create(name: "Vitebsk", country_id: Country.find_by(name: "Belarus").id)
City.create(name: "Veliky Novgorod", country_id: Country.find_by(name: "Russia").id)
City.create(name: "Vladimir", country_id: Country.find_by(name: "Russia").id)
City.create(name: " Ivanovo", country_id: Country.find_by(name: "Russia").id)
City.create(name: "Moscow", country_id: Country.find_by(name: "Russia").id)
City.create(name: "New York", country_id: Country.find_by(name: "USA").id)
City.create(name: "Los Angeles", country_id: Country.find_by(name: "USA").id)
City.create(name: "Chicago", country_id: Country.find_by(name: "USA").id)
City.create(name: "Houston", country_id: Country.find_by(name: "USA").id)
City.create(name: "Phoenix", country_id: Country.find_by(name: "USA").id)
