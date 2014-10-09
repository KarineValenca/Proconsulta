class SessionsController < ApplicationController

	def new
	end
	#  Log in
	def create
		user = User.find_by_email_user(params[:session][:email_user].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
		else
			flash.now[:error] = 'Invalid email/password combination'
      		render 'new'
		end
	end
	# Sing out
	def destroy
		sign_out
		redirect_to root_url
	end


end
