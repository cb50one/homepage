class HomeMailer < ApplicationMailer
  def send_mail(home)
    @home = home
    mail(
      to:   ENV['TO_EMAIL_ADDRESS'],
      from: ENV['EMAIL_ADDRESS'],
      subject: 'portfolioからのお問い合わせ通知'
    )
  end
end
