class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :description
      t.integer :hour_price
      t.references :subcategory, foreign_key: true
      t.references :user, foreign_key: true
      t.string :level
      t.string :photo
      t.string :title

      t.timestamps
    end
  end
end
