class Instructor < ApplicationRecord
  validates :first_name, length: {minimum: 2, maximum: 16}
  validates :last_name, length: {minimum: 2, maximum: 16}
  validates :age, inclusion: { in: 21...99 }
  validates :salary, inclusion: { in: 40000...700000 }
  validates :education, presence: true


end
