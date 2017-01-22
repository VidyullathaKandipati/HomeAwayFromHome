class AddColumnUserEmailToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :user_email, :text
  end
end
