class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_member
  
  private
  def check_login
    if !session[:member_id]
      flash[:status] = FALSE
      flash[:alert] = 'You need to be logged in first'
      
      redirect_to login_path
    else
      @member = Member.find(session[:member_id])
      $member_name = @member.name
      
    end
  end
  def current_member
    @current_member || Member.find(session[:member_id]) if session[:member_id]
  end
end
