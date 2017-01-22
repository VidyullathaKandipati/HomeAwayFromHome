class AddColumnToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :name, :text
  end
end
