class Lecture < ApplicationRecord
  has_many :assoziations
  has_many :categories, :through => :assoziations
  has_many :courseofstudies, :through => :assoziations
  has_many :connections
  has_many :materials, :through => :connections, :source => :section
  belongs_to :faculty
  
  validates :name, presence: true
  validates :symbol, presence: true
  validates :description, presence: true
end
