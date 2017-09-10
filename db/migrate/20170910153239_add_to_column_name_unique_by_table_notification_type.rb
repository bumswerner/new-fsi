class AddToColumnNameUniqueByTableNotificationType < ActiveRecord::Migration[5.1]
  def change
    add_index :notificationtypes, :name, unique: true
  end
end
