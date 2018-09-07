require 'faker'

education = ['HS', 'College', 'Masters', 'PHD']


 50.times {
   Student.create(
     first_name: Faker::Name.first_name,
     last_name: Faker::Name.last_name,
     age: Faker::Number.between(16, 32),
     education: education.sample
 })
