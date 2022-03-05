class Team < ApplicationRecord
    has_one :division
    has_many :employees
    has_many :missions
end
