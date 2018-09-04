class CreateInstructorCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :instructor_courses do |t|

      t.timestamps
    end
  end
end
