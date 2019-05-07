class HomesController < ApplicationController
  def home
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to root_path, notice: "送信しました。"
    end
  end

  private
  def home_params
    params.permit(:name, :email, :text)
  end
end
