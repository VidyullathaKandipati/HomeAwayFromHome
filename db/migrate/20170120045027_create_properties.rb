class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :address
      t.integer :postcode
      t.integer :no_of_bedrooms
      t.integer :no_of_bathrooms
      t.text :room_type
      t.string :female_male
      t.boolean :smoking
      t.boolean :pets

      t.timestamps null: false
    end
  end
end
