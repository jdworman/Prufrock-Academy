class CreateStudents < ActiveRecord::Migration[5.2]
  def up

    create_table :cohorts do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
      # t.datetime "created_at"
      # t.datetime "updated_at"
    end
  end

  def down
    drop_table :users
  end

end
