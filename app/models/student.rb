class Student < ApplicationRecord
    has_many :cohort_students
    has_many :cohorts, through: :cohort_students
    has_one :user, as: :userable

    validates :first_name, length: {minimum: 2, maximum: 16}
    validates :last_name, length: {minimum: 2, maximum: 16}
    validates :age, inclusion: { in: 15...99 }
    validates :education, presence: true
end
