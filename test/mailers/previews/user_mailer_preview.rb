# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def new_user_email
        user = User.new(name: 'ADMIN', email: 'ADMIN@mail.com')
        UserMailer.with(user: user).new_user_email
    end
end
