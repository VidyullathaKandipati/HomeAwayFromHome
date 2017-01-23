class AddColumnAvailablePositionsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :available_positions, :integer
  end
end
