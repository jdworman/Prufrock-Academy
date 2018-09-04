class CreateInstructorCohorts < ActiveRecord::Migration[5.2]
  create_table :instructor_cohorts do |t|
    t.integer :student_id, null: false
    t.integer :cohort_id, null: false

    t.timestamps
  end

  add_index :instructor_cohorts, [:instructor_id, :cohort_id]
end
 
