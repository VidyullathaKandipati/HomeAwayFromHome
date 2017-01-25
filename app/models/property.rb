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
  geocoded_by :full_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode  # auto-fetch address

  def full_address
    address + ", " + location + " " + postcode.to_s
  end


end
