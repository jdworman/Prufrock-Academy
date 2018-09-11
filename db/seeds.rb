require 'faker'

education = ['HS', 'College', 'Masters', 'PHD']


10.times {
  Instructor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(25, 66),
    salary: Faker::Number.between(45000, 200000),
    education: education.sample
)};


250.times {
 Student.create(
   first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   age: Faker::Number.between(16, 32),
   education: education.sample,
   instructor: Instructor.all.sample
)};
