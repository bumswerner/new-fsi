class Image < ApplicationRecord
  belongs_to :gallery
  
  has_attached_file :picture, styles: { medium: "300x300", thumb: "100x100", thumb_gallery: "200x200" }, 
  default_url: "/system/notifications/images/000/000/001/thumb/150x150?1505070152"
  # Validate content type
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  
   # https://s3-eu-west-1.amazonaws.com/a9s-railsvorlesung/home/railsvorlesung4//images/pictures/000/000/003/medium/Bild_2.jpg?1506099552
   # https://s3.amazonaws.com/a9s-railsvorlesung/home/railsvorlesung4//images/pictures/000/000/001/thumb/pretzel-2759994__340_1_.jpg?1506111096
 
end
