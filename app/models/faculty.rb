class Faculty < ApplicationRecord
    validates :name, presence: true
    validates :symbol, presence: true
    validates :description, presence: true
end
