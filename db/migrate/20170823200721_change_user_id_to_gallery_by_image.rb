class ChangeUserIdToGalleryByImage < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :user_id, :integer
    add_column :images, :gallery_id, :integer, references: :gallery
  end
end
