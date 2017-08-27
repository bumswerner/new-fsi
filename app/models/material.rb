class Material < ApplicationRecord
  belongs_to :section
  belongs_to :lecture
  
  has_attached_file :data, styles: { medium: "300x300", thumb: "100x100" }
  # Validate content type
  validates_attachment_content_type :data, content_type: /\Aimage\/.*\z/
end
