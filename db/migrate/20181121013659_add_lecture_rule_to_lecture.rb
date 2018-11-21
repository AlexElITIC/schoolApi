class AddLectureRuleToLecture < ActiveRecord::Migration[5.2]
  def change
    add_column :lectures, :lecture_rule_id, :integer
  end
end
