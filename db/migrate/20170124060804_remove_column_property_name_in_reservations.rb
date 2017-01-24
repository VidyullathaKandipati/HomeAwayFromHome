class RemoveColumnPropertyNameInReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :property_name
  end
end
