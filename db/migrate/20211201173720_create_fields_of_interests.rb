class CreateFieldsOfInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :fields_of_interests do |t|
      t.references :student, null: false, foreign_key: true
      t.string :interest

      t.timestamps
    end
  end
end
