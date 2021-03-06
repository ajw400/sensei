class Lesson < ApplicationRecord
  belongs_to :subcategory
  belongs_to :user
  has_many :appointments
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode

  def address
    "#{self.user.address} #{self.user.city}"
  end
end
