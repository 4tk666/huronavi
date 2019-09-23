class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text       :text,null: false
      t.text       :title, null: false
      t.float      :rate
      t.text       :address, null: false
      t.integer    :price
      t.text       :access
      t.text       :holiday
      t.text       :bath_time
      t.integer    :like
      t.references :user, foreign_key: true
      t.references :prefecture, foreign_key: true
      t.timestamps null: true
    end
  end
end
