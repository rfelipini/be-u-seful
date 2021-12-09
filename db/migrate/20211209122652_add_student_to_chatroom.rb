class AddStudentToChatroom < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :student, null: false, foreign_key: true
  end
end
