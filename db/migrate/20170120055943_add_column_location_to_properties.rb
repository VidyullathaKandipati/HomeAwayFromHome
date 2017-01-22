class AddColumnLocationToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :location, :text
  end
end
