class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :review_text
      t.references :student, null: false, foreign_key: true
      t.references :volunteer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
