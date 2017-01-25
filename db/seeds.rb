# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Property.destroy_all
Property.create :name=>"Value for money", :address=>"101 Albert road, Strathfield, NSW",
  :postcode=>2135, :location=>"Strathfield", :rent=> 200, :no_of_bedrooms=>3,
  :no_of_bathrooms=>2, :capacity=>5, :room_type=>"shared", :female_male=>"females only",
  :smoking=>"No", :pets=>"Yes", :available_positions=>5

Property.create :name=>"Bright and big", :address=>"67 Regent street, Kogarah, NSW",
  :postcode=>2217, :location=>"Kogarah", :rent=>250, :no_of_bedrooms=>1, :no_of_bathrooms=>1,
  :capacity=> 1, :room_type=>"private", :female_male=>"Male / Female",
  :smoking=>"Yes", :pets=>"Yes", :available_positions=>1

User.destroy_all
User.create :firstname=>"Vidyullatha", :lastname=>"Kandipati", :email=>"latha522@gmail.com", :password=>"chicken",
  :contact=>"+61416870837", :passport_no=>"GSK78678", :address=>"111 Henley Rd, Homebush west, NSW",
  :postcode=>2140, :admin=>true

Service.destroy_all
Service.create :name=>"Taxi", :description=>"Airport pickup / drop", :cost=>50
Service.create :name=>"Food delivery",
  :description=>"We provide breakfast, lunch and dinner for additional cost.", :cost=>50
