class Material < ApplicationRecord
  belongs_to :section
  belongs_to :lecture
end
