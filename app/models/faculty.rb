class Faculty < ApplicationRecord
    
    has_many :courseofstudies
    
    validates :name, presence: true
    validates :symbol, presence: true
    validates :description, presence: true
end
