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
  # validate :check_availability
  #
  # private
  # def check_availability
  #   errors.add(:capacity, "No availabilty")
  # end
end
