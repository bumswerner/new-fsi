class AddIndexFacultIdToLectures < ActiveRecord::Migration[5.1]
  def change
    add_index :lectures, :faculty_id 
  end
end
