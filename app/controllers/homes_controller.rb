class HomesController < ApplicationController
  def home
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      HomeMailer.send_mail(@home).deliver_now
      redirect_to root_path, notice: "送信しました。"
    end
  end

  private
  def home_params
    params.permit(:name, :email, :text)
  end
end
