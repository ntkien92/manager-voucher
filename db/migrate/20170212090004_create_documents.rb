class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :name
      t.text :content

      t.belongs_to :department, add_index: true
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
