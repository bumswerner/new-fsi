class Connection < ApplicationRecord
  belongs_to :lecture
  belongs_to :section
  belongs_to :faculty
end
