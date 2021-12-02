class CreateCertificates < ActiveRecord::Migration[6.1]
  def change
    create_table :certificates do |t|
      t.string :upload_image
      t.string :image_title
      t.string :image_icon
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
