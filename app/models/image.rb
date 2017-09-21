class Image < ApplicationRecord
  belongs_to :gallery
  
  has_attached_file :picture, styles: { medium: "300x300", thumb: "100x100", thumb_gallery: "200x200" }, 
  default_url: "/system/notifications/images/000/000/001/thumb/150x150?1505070152"
  # Validate content type
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
