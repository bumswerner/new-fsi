class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :name
      t.text :discription
      t.attachment :data
      t.references :section, foreign_key: true
      t.references :lecture, foreign_key: true

      t.timestamps
    end
  end
end
