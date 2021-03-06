class CreateCohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students do |t|
      t.integer :student_id, null: false
      t.integer :cohort_id, null: false

      t.timestamps
    end

    add_index :cohorts_students, [:student_id, :cohort_id]
  end
end
