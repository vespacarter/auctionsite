class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)

  	if user && user.authenticate(params[:session][:password])
  		session[:user_id] = user.id
  		redirect_to user
  	else
  		redirect_to '/login'
  	end
  end

  def destroy
  	session.clear
  	redirect_to '/'
  end
end
