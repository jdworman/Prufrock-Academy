require 'faker'

education = %w[HS College Masters PHD]

250.times do
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(16, 22),
    education: education.sample
  )
end

Instructor.create(
  first_name: 'Al',
  last_name: 'Funcoot',
  age: 55,
  salary: 420000,
  education: 'College'
)

Instructor.create(
  first_name: 'Stephano',
  last_name: 'Montgomery',
  age: 66,
  salary: 100000,
  education: 'PHD'
)

Instructor.create(
  first_name: 'Julio',
  last_name: 'Sham',
  age: 96,
  salary: 100000,
  education: 'College'
)

Instructor.create(
  first_name: 'Coach',
  last_name: 'Genghis',
  age: 34,
  salary: 420000,
  education: 'HS'
)

Instructor.create(
  first_name: 'Detective',
  last_name: 'Dupin',
  age: 30,
  salary: 55000,
  education: 'Masters'
)

Instructor.create(
  first_name: 'Mathathias',
  last_name: 'Medicalschool',
  age: 79,
  salary: 500000,
  education: 'PHD'
)

Instructor.create(
  first_name: 'Shirley',
  last_name: 'Sinoit-Pecer',
  age: 26,
  salary: 420000,
  education: 'College'
)

Instructor.create(
  first_name: 'Gunther',
  last_name: 'Squalor',
  age: 34,
  salary: 700000,
  education: 'PHD'
)

joseph = User.new(
  password: 'password',
  email: "jdworman84\@gmail.com"
)
joseph.save
