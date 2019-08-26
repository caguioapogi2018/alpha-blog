class UsersController < ApplicationController
  before_action :params_id, only: [:update, :edit, :show]
  ########################################################################
def index
  @users = User.all
end
  # ########################################################################
  def new
    @user = User.new
  end
########################################################################
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Alpha Inc #{@user.username}"
      redirect_to articles_path
    else
      render 'users/new'
    end
  end
########################################################################
  def edit
  end
########################################################################
  def update
    if @user.update(user_params)
      flash[:success] = "This account was successfully Updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end
########################################################################
  def show
  end
########################################################################
#PRIVATE FUNCTIONS:
  private
  def params_id
    @user = User.find(params[:id])
  end
########################################################################
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
########################################################################