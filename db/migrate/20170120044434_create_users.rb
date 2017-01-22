class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :firstname
      t.text :lastname
      t.text :email
      t.text :contact
      t.text :passport_no
      t.text :address
      t.integer :postcode
      t.timestamps null: false
    end
  end
end
