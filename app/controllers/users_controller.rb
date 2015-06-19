class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :admin_required
  	def show
  		@user = User.find params[:id]
  	end

  	def index
  		@users = User.all
  	end

  	def destroy
  		@user = User.find params[:id]
  		@user.destroy
  		redirect_to users_path
  	end

  	private

	def admin_required
	    if current_user.role != 'admin'
	      redirect_to root_path
	    end
  	end
end
