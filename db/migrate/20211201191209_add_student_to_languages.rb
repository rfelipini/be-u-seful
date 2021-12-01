class AddStudentToLanguages < ActiveRecord::Migration[6.1]
  def change
    add_reference :languages, :student, null: false, foreign_key: true
  end
end
