class Image < ApplicationRecord
  belongs_to :gallery
  
  has_attached_file :picture, styles: { medium: "300x300", thumb: "100x100" }
  # Validate content type
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
