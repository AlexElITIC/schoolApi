class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.datetime :start_date
      t.string :classroom
      t.integer :school_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
