class CreateStudentCourses < ActiveRecord::Migration[5.2]
  create_table :student_courses do |t|
    t.integer :student_id, null: false
    t.integer :course_id, null: false

    t.timestamps
  end

  add_index :student_courses, [:student_id, :course_id]
end
 
