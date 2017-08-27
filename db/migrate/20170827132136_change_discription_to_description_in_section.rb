class ChangeDiscriptionToDescriptionInSection < ActiveRecord::Migration[5.1]
  def change
    remove_column :sections, :discription, :text
    add_column :sections, :description, :text
  end
end
