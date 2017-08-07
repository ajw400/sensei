class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.integer :length
      t.datetime :date_time
      t.string :status
      t.integer :total_price

      t.timestamps
    end
  end
end
