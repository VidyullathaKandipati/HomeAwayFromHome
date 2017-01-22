class AddColumnPropertyNameToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :property_name, :text
  end
end
