class Lecture < ApplicationRecord
  has_many :reservations, dependent: :destroy
end
