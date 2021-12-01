class CreatePortfolioTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolio_types do |t|
      t.references :student, null: false, foreign_key: true
      t.string :image_card
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
