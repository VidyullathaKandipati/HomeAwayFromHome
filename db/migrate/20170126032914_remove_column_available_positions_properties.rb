class RemoveColumnAvailablePositionsProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :available_positions
  end
end
