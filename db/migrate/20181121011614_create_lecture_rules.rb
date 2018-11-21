class CreateLectureRules < ActiveRecord::Migration[5.2]
  def change
    create_table :lecture_rules do |t|
      t.string :description

      t.timestamps
    end
  end
end
