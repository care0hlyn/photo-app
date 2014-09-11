class TagsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @photo = @user.photo.find(params[:id])
    @tag = Tag.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:photo_id])
    @tag = Tag.new(params[:tag])
    if @tag.save
      redirect_to :back, notice: "User has been tagged!"
    else
      redirect_to :back, alert: "User has already been tagged!"
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to :back, notice: "Tag deleted!"
  end

end
