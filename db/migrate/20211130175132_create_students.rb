class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :full_name
      t.integer :age
      t.string :nationality
      t.string :city_at
      t.string :city_to
      t.string :phone_number
      t.string :link_to_github
      t.string :link_to_linkedin
      t.string :passport
      t.string :remoto_work
      t.string :work_abroad

      t.timestamps
    end
  end
end
