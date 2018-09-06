class Cohort < ApplicationRecord
  validates :name, length: {minimum: 2, maximum: 16}
  validates :start_date, length: {minimum: 2, maximum: 16}
  validates :end_date, inclusion: { in: 15...99 }
  validates :instructor_id, presence: true
  validates :student_id, presence: true
end
