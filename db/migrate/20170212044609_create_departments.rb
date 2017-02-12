class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
