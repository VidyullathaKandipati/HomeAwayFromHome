class AddColumnUserEmailToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :user_email, :text
  end
end
