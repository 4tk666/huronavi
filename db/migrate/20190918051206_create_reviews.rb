class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text       :text,null: false
      t.text       :title, null: false
      t.integer    :rate
      t.references :user, foreign_key: true
      t.references :prefecture, foreign_key: true
      t.timestamps null: true
    end
  end
end
