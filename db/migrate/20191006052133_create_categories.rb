class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.text   :name, null: false
      t.references :review, foreign_key: true 
      t.timestamps null: true
    end
  end
end
