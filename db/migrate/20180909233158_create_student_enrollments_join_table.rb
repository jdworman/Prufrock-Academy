class CreateStudentEnrollmentsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :students_path do |t|
      t.index :course_id
      t.index :student_id
    end
  end
end
