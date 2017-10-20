class AddColumnFacultIdToLecutresTable < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :faculty_id, :integer
  end
end
