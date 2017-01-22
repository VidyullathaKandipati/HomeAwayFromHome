class ChangeColumnTypeSmokingInProperties < ActiveRecord::Migration
  def change
    change_column :properties, :smoking, :text
    change_column :properties, :pets, :text
  end
end
