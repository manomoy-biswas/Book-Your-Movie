class SessionController < ApplicationController

  def new
    redirect_to root_path
  end
  def create
    if @user&.authrnticate(params)
  end
end
