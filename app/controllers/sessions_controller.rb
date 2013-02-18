class SessionsController < ApplicationController
  def new

  end

  def create
  	user = User.find_by_username(params[:useranme])
  	if user && user.authenciate(params[:password])
  		session[:userid] = user.id
  		redirect_to rooturl, notice: 'Logged in!'
  	else
  		flash[:error] = 'Wrong Username or Password.'
  		redirect_to root_url
  	end
  end

  def destroy
  	session[:userid] = nil
  	redirect_to root_url, notice: 'Logged out.'
  end
end
