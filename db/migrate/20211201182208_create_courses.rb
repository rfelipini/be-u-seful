class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.references :student, null: false, foreign_key: true
      t.string :description
      t.string :started_at
      t.string :finalized_at
      t.string :title
      t.string :company

      t.timestamps
    end
  end
end
