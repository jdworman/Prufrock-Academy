class CreatePrincipals < ActiveRecord::Migration[5.2]
  def change
    create_table :principals do |t|
      t.string :index
      t.string :new
      t.string :create
      t.string :edit

      t.timestamps
    end
  end
end
