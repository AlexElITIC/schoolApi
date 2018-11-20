class DecimalToInteger < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :grade
   add_column :reservations, :grade, :integer
  end
end
