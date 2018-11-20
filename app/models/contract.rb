class Contract < ApplicationRecord
  belongs_to :subscriber,
  dependent: :destroy
  has_many :student_contracts,
  dependent: :destroy
end
