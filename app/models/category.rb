class Category < ApplicationRecord
  has_many :subcategories
  has_many :lessons, through: :subcategories
  has_attachment :photo
end
