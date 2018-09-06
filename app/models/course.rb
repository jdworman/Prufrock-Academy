class Course < ApplicationRecord
  validates :name, length: {minimum: 2, maximum: 32}
  validates :hours, inclusion: { in: 30...9999 }

end
