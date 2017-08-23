class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :message
      t.attachment :image
      t.references :notificationtype, foreign_key: true

      t.timestamps
    end
  end
end
