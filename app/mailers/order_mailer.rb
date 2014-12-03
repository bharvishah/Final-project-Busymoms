class OrderMailer < ActionMailer::Base
  default from: "robot@yourcoolapp.io"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(user, order)
    @user = user
    @order = order

    mail to: user.email, subject: "Thanks #{user.profile.first_name}. Your order has been placed. "
  end
end
