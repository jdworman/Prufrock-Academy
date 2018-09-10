class Course < ApplicationRecord
  validates :name, length: {minimum: 2, maximum: 32}
  validates :hours, inclusion: { in: 30...9999 }
  has_and_belongs_to_many :students
end
