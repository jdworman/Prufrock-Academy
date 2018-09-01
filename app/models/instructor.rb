class Instructor < ApplicationRecord


  belongs_to :cohort


  validates :first_name, :last_name, :education, presence: true
  validates :education, inclusion: { in: Instructor.education }
  validates :age, inclusion: { in: 0...100 }
  validates :salary, numericality: { greater_than_or_equal_to: 0 }

end
