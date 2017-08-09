class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
    add_column :users, :phone, :integer
    add_column :users, :company_name, :string
    add_column :users, :profile_pic, :string
    add_column :users, :bio, :text
    add_column :users, :birthdate, :date
    add_column :users, :languages, :string
  end
end
