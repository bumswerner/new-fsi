class AddColumnFacultIdToConnectionTable < ActiveRecord::Migration[5.1]
  def change
     add_column :connections, :faculty_id, :integer
     add_column :materials, :faculty_id, :integer
  end
end
