class AddIndexFacultIdToMaterialsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :materials, :faculty_id 
  end
end
