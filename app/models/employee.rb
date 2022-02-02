class Employee < ApplicationRecord
    belongs_to :division
    belongs_to :team

    validates :name,  length: { minimum: 5 ,maximum: 100 }
    validates_format_of :email, with: /\A[^@\s]+@[^@\s]+\z/ 
    validates :salary,  inclusion: { in: 1500..15000 }

    attribute_method_suffix '_long?'
    define_attribute_methods

    def attribute_long?(attr)
        send(attr).length >5
    end
end