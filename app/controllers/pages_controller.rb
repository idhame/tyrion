class PagesController < ApplicationController
before_action :authenticate_user!
before_action :admin_required, only: [:new, :create]

  def index
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      flash[:successfully_registered] = 'New user registered succesfully'
  		redirect_to register_path
  	else
  		render :action => 'new'
  	end
  end
  
  private

  def admin_required
    if current_user.role != 'admin'
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end


end
