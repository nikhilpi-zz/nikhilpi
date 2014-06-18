class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
  		if user && user.authenticate(params[:session][:password])
    		sign_in user
      	redirect_to user
  		else
      		render 'new'
  		end
	end

	def destroy
		reset_session
		redirect_to "/login"
	end

	def current_user=(user)
    	@current_user = user
  	end

  def current_user
    remember_token = User.digest(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end
end
