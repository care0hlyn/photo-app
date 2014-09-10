class PhotosController < ApplicationController

  def index
    @user = User.find(params[:id])
    @photos = @user.photos.all
  end

  def new
    @user = User.find(params[:user_id])
  end

  def create
    @photo = Photo.new( photo_params )
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end

end
