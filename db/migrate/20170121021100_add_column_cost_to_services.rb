class AddColumnCostToServices < ActiveRecord::Migration
  def change
    add_column :services, :cost, :integer
  end
end
