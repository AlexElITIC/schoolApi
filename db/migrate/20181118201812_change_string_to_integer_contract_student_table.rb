class ChangeStringToIntegerContractStudentTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :student_contracts, :student_id
   add_column :student_contracts, :student_id, :integer
  end
end
