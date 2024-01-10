class OrderConfirmationMailer < ApplicationMailer
    default from: 'shailendrashukla456@gmail.com'

    def welcome_email(user)
        @user = user
        mail(to: user.email, subject: 'Welcome to Our App')
      end
end
