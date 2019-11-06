class HomeController < ApplicationController
  before_action :set_user

  def index
    @contents = Content.all
  end

  private
  def set_user
    @user = User.find_by(id: current_user.id)
  end
end
