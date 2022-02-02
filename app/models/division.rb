class Division < ApplicationRecord
    has_one :employee
    has_many :teams

    validates :name, presence: true, length: { minimum: 5 ,maximum: 100 }
    validates :description, presence: true, length: { minimum: 10 ,maximum: 120 }
    validates :manager, presence: true, length: { minimum: 5 ,maximum: 100 }
    
    
end
