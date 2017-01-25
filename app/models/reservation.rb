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

class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :property
  validates_presence_of :start_date, :end_date
  validate :end_date_is_after_start_date
  # validates_associated :property, :message => "has no availability" #, :on=>[:new, :create, :edit, :update]
  # validate :check_for_accomodation_availability, :on=>[:new, :create]
  # validate :update_availability, :on=>[:edit, :update]

  private
  def end_date_is_after_start_date
    if (!start_date.blank? && !end_date.blank?)
      if start_date >= end_date
        errors.add(:end_time, "Cannot be before the start date.")
        return false
      end
    end
    return true
  end

  def check_for_accomodation_availability
    property = Property.find property_id
    if no_of_people > property.available_positions
      errors.add(:no_of_people, ": Cannot accomodate that many people,
                  please see the available positions and make your reservation.")
    else
      property.available_positions -= no_of_people
      property.save
    end
  end

  def update_availability
    if self.changed?
      puts "Reservation changed."
      if self.changes.include? "no_of_people"
        property = Property.find property_id
        property.available_positions += self.changes["no_of_people"][0]
        if self.changes["no_of_people"][1] > property.available_positions
          errors.add(:no_of_people, ": Cannot accomodate that many people,
                      please see the available positions and make your reservation.")
        else
          property.available_positions -= no_of_people
          property.save
        end
      end
    end
  end

  def check_available_positions_for_date
  end

end
