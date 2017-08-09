class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachment :photo
  has_many :appointments
  has_many :lessons, dependent: :destroy
  has_many :subcategories, through: :lessons
  has_many :received_appointments, source: :appointments, through: :lessons
end
