class Lesson < ApplicationRecord
  belongs_to :subcategory
  belongs_to :user
  has_many :appointments
end
