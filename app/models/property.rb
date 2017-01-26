# == Schema Information
#
# Table name: properties
#
#  id                  :integer          not null, primary key
#  address             :text
#  postcode            :integer
#  no_of_bedrooms      :integer
#  no_of_bathrooms     :integer
#  room_type           :text
#  female_male         :string
#  smoking             :text
#  pets                :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  name                :text
#  location            :text
#  image               :text
#  rent                :integer
#  capacity            :integer
#  available_positions :integer
#

class Property < ActiveRecord::Base
  has_many :reservations
  validates_numericality_of :postcode, :greater_than=>0, :message=>"Please provide valid postcode."
  validates_numericality_of :rent, :greater_than=>0, :message=>"Please provide valid rent."
  validates_numericality_of :no_of_bedrooms, :greater_than=>0, :message=>"Please provide valid number of bedrooms."
  validates_numericality_of :no_of_bathrooms, :greater_than=>0, :message=>"Please provide valid number of bathrooms."
  validates_numericality_of :capacity, :greater_than=>0, :message=>"Please provide valid capacity."

  geocoded_by :full_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode  # auto-fetch address

  def full_address
    address + ", " + location + " " + postcode.to_s
  end


end
