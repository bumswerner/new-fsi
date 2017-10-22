class AddColumnColorToFacultyTable < ActiveRecord::Migration[5.1]
  def change
    add_column :faculties, :color, :string
  end
end
