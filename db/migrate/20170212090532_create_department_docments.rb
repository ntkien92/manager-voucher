class CreateDepartmentDocments < ActiveRecord::Migration[5.0]
  def change
    create_table :department_docments do |t|
      t.integer :status, default: 0
      t.string :name

      t.belongs_to :document, add_index: true
      t.belongs_to :department, add_index: true
      t.timestamps
    end
  end
end
