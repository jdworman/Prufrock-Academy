class Student < ApplicationRecord
    validates :first_name, length: {minimum: 2, maximum: 16}
    validates :last_name, length: {minimum: 2, maximum: 16}
    validates :age, inclusion: { in: 15...99 }
    validates :education, presence: true
end
