class AddColumnImageToServices < ActiveRecord::Migration
  def change
    add_column :services, :image, :text
  end
end
