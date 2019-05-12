# Preview all emails at http://localhost:3000/rails/mailers/home_mailer
class HomeMailerPreview < ActionMailer::Preview
  def home
    home = Home.new(name: "山田太郎", email: "sample@example.com", text: "お問い合わせメッセージです")
    HomeMailer.send_mail(home)
  end
end
