class Cohort < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :instructor, optional: true
  has_and_belongs_to_many :students

  validates :name, length: { minimum: 2, maximum: 16 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
