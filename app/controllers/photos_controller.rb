class PhotosController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.new
  end

  def destroy
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
    if @photo.destroy
      flash[:alert] = "Photo successfully deleted!"
    end
    redirect_to :back
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end
