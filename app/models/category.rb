class Category < ApplicationRecord
  has_many :subcategories
  has_many :lessons, through: :subcategories
end
