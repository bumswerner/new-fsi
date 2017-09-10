class Notificationtype < ApplicationRecord
  
  has_many :notifications
  
  # validations
  validates :name,
            presence: true,
            uniqueness: { case_sensitive: true }
  validates :description, presence: true
  
end
