class LectureDateToDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :lectures, :start_date
   add_column :lectures, :start_date, :datetime
  end
end
