class Student < ApplicationRecord
  has_many :student_contracts, dependent: :destroy
end
