class UsersController < ApplicationController

# attr_accessible :email, :password, :password_confirmation
  before_filter :authorize

  def index
    @users = User.all
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "index"
    end
  end

end
