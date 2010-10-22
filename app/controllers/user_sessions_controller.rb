class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    @user_session.save do |result|
      if result
        flash[:notice] = "Successfully logged in."
        redirect_to home_url
      else
        render :action => 'new'
      end
    end
  end

  def destroy
    if @user_session = UserSession.find
      @user_session.destroy
      flash[:notice] = "Successfully logged out."
      redirect_to root_url
    else
      flash[:notice] = "You haven't logged in."
      redirect_to root_url
    end
  end

end
