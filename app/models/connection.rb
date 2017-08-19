class Connection < ApplicationRecord
  belongs_to :lecture
  belongs_to :section
end
