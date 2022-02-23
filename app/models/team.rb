class Team < ApplicationRecord
    #belongs_to :division
    has_many :employees
    has_many :missions
end
