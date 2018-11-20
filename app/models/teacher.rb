class Teacher < ApplicationRecord
  has_many :lectures, dependent: :destroy
end
