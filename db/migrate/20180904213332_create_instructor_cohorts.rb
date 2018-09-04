class CreateInstructorCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :instructor_cohorts do |t|

      t.timestamps
    end
  end
end
