class Assoziation < ApplicationRecord
  belongs_to :category
  belongs_to :courseofstudy
  belongs_to :lecture
end
