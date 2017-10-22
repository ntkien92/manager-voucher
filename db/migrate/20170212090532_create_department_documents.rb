class CreateDepartmentDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :department_documents do |t|
      t.integer :status, default: 0
      t.string :name
      t.text :description
      t.datetime :received_at

      t.belongs_to :document, add_index: true
      t.belongs_to :department, add_index: true
      t.timestamps
    end
  end
end
