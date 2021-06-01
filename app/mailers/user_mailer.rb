class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notification.subject
  #
  def notification
    @user = params[:user]
    @unsubscribe_url = unsubscribe_url(@user.to_sgid(for: :unsubscribe))
    @greeting = "Hi"

    headers["List-Unsubscribe"] = "<#{@unsubscribe_url}>"
    mail to: @user.email
  end
end
