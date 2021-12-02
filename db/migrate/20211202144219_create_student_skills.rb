class CreateStudentSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :student_skills do |t|
      t.integer :score
      t.references :student, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
