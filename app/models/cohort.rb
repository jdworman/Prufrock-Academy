class Cohort < ApplicationRecord
  belongs_to :course
    has_one :instructor
    has_many :cohort_students
    has_many :students, through: :cohort_students

  validates :name, length: {minimum: 2, maximum: 16}
  validates :start_date,  presence: true
  validates :end_date,  presence: true
  validates :instructor_id, presence: true
  validates :student_id, presence: true
end
