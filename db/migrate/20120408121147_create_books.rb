class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :category_id
      t.text :description
      t.integer :status_id

      t.timestamps
    end
  end
end
