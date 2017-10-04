class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #

  # Sendet eine Aktivierungsemail an die Email-Adresse des Benutzers
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account Aktivierung - Projekt Gamification"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #

  # Sendet Passwort_reset_Email an den Benutzer
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Passwort Reset - Projekt Gamification"
  end
  
  
    def send_new_user_message(user)
    @user = user
    mail(:to => user.email, :subject => "New User created please review and enable.")
  end
end