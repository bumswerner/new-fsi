class Faculty < ApplicationRecord
    
    has_many :courseofstudies
    has_many :lectures
    has_many :connections
    has_many :materials
    
    validates :name, presence: true
    validates :symbol, presence: true
    validates :description, presence: true
end
