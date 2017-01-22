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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
