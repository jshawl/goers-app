class ImagesController < ApplicationController

  #index
  def index
    @images = Image.all
  end

  #new
  def new
    @artist = Artist.find(params[:artist_id])
    @image = Image.new
  end

  #create
  def create
    @artist = Artist.find(params[:artist_id])
    @image = @artist.images.create(image_params)
    redirect_to artist_path(@artist)
  end

  #show
  def show
    @image = Image.find(params[:id])
  end

  #edit
  def edit
    @image = Image.find(params[:id])
    @artist = Artist.find(params[:artist_id])
  end

  #update
  def update
    @image = Image.find(params[:id])
    @image.update(image_params)
    redirect_to artist_image_path
  end

  #destroy
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    @artist = Artist.find(params[:artist_id])
    redirect_to artist_path(@artist)
  end


  private
  def image_params
    params.require(:image).permit(:date, :venue, :location, :photo_url, :artist_id)
  end

end
