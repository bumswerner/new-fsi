class Category < ApplicationRecord
  has_many :assoziations
  has_many :lectures, :through => :assoziations
  has_many :courseofstudies, :through => :assoziations
end
