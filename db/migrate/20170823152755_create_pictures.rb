class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :name
      t.attachment :image
      t.references :gallery, foreign_key: true

      t.timestamps
    end
  end
end
