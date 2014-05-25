class SessionsController < ApplicationController
  def new
  end
  
  def create
    member = Member.authenticate(params[:email], params[:password])
          flash[:alert] = 'Invalid username and password'

    if member
      session[:member_id] = member.id
      redirect_to '/members', :notice => "Logged in"
    else
      flash[:status] = FALSE
      flash[:alert] = 'Invalid username and password'
      
      redirect_to login_path
      
      
    end
  end
  
  def destroy
    session[:member_id] = nil
    redirect_to login_path
  end
end
