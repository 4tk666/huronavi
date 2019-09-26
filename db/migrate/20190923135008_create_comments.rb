class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    t.text       :text, null: false
    t.references :user, foreign_key: true
    t.references :review, foreign_key: true
    t.timestamps null: true
    end
  end
end