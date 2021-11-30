class CreateVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteers do |t|
      t.string :full_name
      t.string :github
      t.string :background

      t.timestamps
    end
  end
end
