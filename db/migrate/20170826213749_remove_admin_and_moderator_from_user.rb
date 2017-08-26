class RemoveAdminAndModeratorFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :admin, :boolean
    remove_column :users, :moderator, :boolean
  end
end
