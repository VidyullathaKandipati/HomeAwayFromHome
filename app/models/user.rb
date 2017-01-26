# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  firstname       :text
#  lastname        :text
#  email           :text
#  contact         :string
#  passport_no     :text
#  address         :text
#  postcode        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean
#  password_digest :string
#

class User < ActiveRecord::Base
  has_many :reservations
  has_many :bookings
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates_confirmation_of :password
  validates_numericality_of :postcode, :allow_nil => true, :greater_than=>0, :message=>"If providing, please provide valid postcode."
end
