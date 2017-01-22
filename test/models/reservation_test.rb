# == Schema Information
#
# Table name: reservations
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  property_id   :integer
#  start_date    :date
#  end_date      :date
#  no_of_people  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_email    :text
#  property_name :text
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
