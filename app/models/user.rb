class User < ApplicationRecord
    validates :name,  length: { minimum: 5 ,maximum: 100 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

end
