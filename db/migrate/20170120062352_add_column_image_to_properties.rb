class AddColumnImageToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :image, :text
  end
end
