class AddIndexPrefecturesAncestry < ActiveRecord::Migration[5.2]
  def change
    add_index :prefectures, :ancestry
  end
end
