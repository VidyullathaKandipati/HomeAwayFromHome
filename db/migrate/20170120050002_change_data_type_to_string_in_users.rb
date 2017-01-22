class ChangeDataTypeToStringInUsers < ActiveRecord::Migration
  def change
    change_column :users, :contact, :string
  end
end
