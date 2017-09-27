class Material < ApplicationRecord
  belongs_to :section
  belongs_to :lecture
 # before_validation :data
  has_attached_file :data
 # # Validate content type
 
   before_post_process :check_for_content
   
  validates_attachment :data,
   content_type: { content_type: ["text/plain", "application/pdf","application/rtf", "image/jpeg", "image/gif", "image/png", 
                                  "video/mpeg", "application/x-rar-compressed", "application/zip", "application/msword",
                                  	"application/vnd.ms-powerpoint"] }
   
  # do_not_validate_attachment_file_type :data
   
   def check_for_content
       "12324".inspect
   end
   
end
