class AddIndexFacultIdToConnectionsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :connections, :faculty_id 
  end
end
