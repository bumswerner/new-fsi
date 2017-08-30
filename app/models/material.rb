class Material < ApplicationRecord
  belongs_to :section
  belongs_to :lecture
  before_validation :data
  has_attached_file :data, styles: { medium: "300x300", thumb: "100x100" }
 # # Validate content type
 
   before_post_process :check_for_content
   
  validates_attachment :data,
   content_type: { content_type: ["text/plain", "application/pdf","application/rtf", "image/jpeg", "image/gif", "image/png"] }
   
  # do_not_validate_attachment_file_type :data
   
   def check_for_content
       "12324".inspect
   end
   
end
