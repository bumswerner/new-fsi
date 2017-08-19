class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.string :name
      t.references :lecture, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
