# == Schema Information
#
# Table name: bookings
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  service_id       :integer
#  appointment_time :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_email       :text
#

class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  validates :appointment_time, :presence => true, :uniqueness => true
end
