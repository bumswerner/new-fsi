class Section < ApplicationRecord
  has_many :materials
  has_many :connections
  has_many :lectures, :through => :connections
end
