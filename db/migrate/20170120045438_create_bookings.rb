class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :service_id
      t.datetime :appointment_time

      t.timestamps null: false
    end
  end
end
