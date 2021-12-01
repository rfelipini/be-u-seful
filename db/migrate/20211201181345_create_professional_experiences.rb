class CreateProfessionalExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :professional_experiences do |t|
      t.references :student, null: false, foreign_key: true
      t.string :description
      t.string :started_at
      t.string :finalized_at
      t.string :ocupation
      t.string :company

      t.timestamps
    end
  end
end
