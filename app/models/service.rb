# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cost        :integer
#

class Service < ActiveRecord::Base
  has_many :bookings
end
