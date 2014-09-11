class PhotosController < ApplicationController

  def index
    @user = User.find(params[:id])
    @photos = @user.photos.all
  end

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = Photo.new( photo_params )
    if @photo.save
      redirect_to user_path(@user), notice: "Photo uploaded!"
    else
      redirect_to new_user_photo_path
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :user_id)
  end

end
