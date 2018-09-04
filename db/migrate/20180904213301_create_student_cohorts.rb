class CreateStudentCohorts < ActiveRecord::Migration[5.2]
  create_table :student_cohorts do |t|
    t.integer :student_id, null: false
    t.integer :cohort_id, null: false

    t.timestamps
  end

  add_index :student_cohorts, [:student_id, :cohort_id]
end
