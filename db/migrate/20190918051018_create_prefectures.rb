class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.text   :name, null: false
      t.string  :ancestry
      t.timestamps null: true
    end
  end
end
