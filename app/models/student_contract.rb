class StudentContract < ApplicationRecord
  belongs_to :contract
  belongs_to :student
end
