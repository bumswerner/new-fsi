class AddIndexGalleryIdToImage < ActiveRecord::Migration[5.1]
  def change
     add_index :images, :gallery_id 
  end
end
