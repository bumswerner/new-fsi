class Courseofstudy < ApplicationRecord
  belongs_to :studytype
  belongs_to :faculty
  has_many :assoziations
  has_many :categories, :through => :assoziations
  has_many :lectures, :through => :assoziations
end
