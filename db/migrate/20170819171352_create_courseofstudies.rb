class CreateCourseofstudies < ActiveRecord::Migration[5.1]
  def change
    create_table :courseofstudies do |t|
      t.string :name
      t.string :symbol
      t.text :description
      t.references :faculty, foreign_key: true
      t.references :studytype, foreign_key: true

      t.timestamps
    end
  end
end
