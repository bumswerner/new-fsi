class Course < ApplicationRecord
  belongs_to :faculty
  belongs_to :studytype
end
