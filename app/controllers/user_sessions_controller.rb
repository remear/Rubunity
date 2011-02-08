class UserSessionsController < ApplicationController
  layout :choose_layout

  def new
    @user_session = UserSession.new
  end
  
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Hello!"
      redirect_to root_url, :notice => "Hello!"
    else
      flash[:notice] = "Invlaid Credentials"
      render :action => 'new'
    end
  end
  

  def destroy
    @user_session = UserSession.find
    @user_session.destroy if @user_session
    flash[:notice] = "Goodbye!"
    redirect_to root_url
  end

  def choose_layout
    case action_name
      when 'home' then 'home'
      else 'content'
    end
  end
end
