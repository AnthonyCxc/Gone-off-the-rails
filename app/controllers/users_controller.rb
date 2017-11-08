class UsersController < ApplicationController
  def index  
  end
  def new 
    @user = User.new	
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      log_in @user
  		flash[:success] = "Welcome to Pay it forward!"
  		redirect_to @user
  	else
  		render 'show'
  	end
  end

  def edit
  end

  def update
  end

  private
  	def user_params
  		params.require(:user).permit()
      # :profile_photo
  	end
end