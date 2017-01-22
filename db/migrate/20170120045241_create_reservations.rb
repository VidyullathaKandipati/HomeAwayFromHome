class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :property_id
      t.date :start_date
      t.date :end_date
      t.integer :no_of_people

      t.timestamps null: false
    end
  end
end
