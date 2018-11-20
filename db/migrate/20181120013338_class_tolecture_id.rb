class ClassTolectureId < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :class_id
   add_column :reservations, :lecture_id, :integer
  end
end
