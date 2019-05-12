class HomeMailer < ApplicationMailer
  def send_mail(home)
    @home = home
    mail(
      to:   ENV['TO_EMAIL_ADDRESS'],
      subject: 'お問い合わせ通知'
    )
  end
end
