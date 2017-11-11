class UsersController < ApplicationController
  before_action :authenticate_user , except: [:index, :show]

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

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was added!"}
        format.json { render action: "show", status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User info was updated" }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end