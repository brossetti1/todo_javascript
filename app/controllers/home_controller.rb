class HomeController < ApplicationController

  def index
    @current_user = current_user if current_user
    @users = User.all
  end

end