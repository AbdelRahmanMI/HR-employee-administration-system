class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_one_attached :image

    after_create do |job|
      mailer(self)
    end
    
    def mailer(user)
      UserMailer.with(user: user).new_user_email.deliver_now
    end
end
