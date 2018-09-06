class Cohort < ApplicationRecord
  validates :name, length: {minimum: 2, maximum: 16}
  validates :start_date,  presence: true
  validates :end_date,  presence: true
  validates :instructor_id, presence: true
  validates :student_id, presence: true
end
