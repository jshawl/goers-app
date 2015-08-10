class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  # excellent use of callbacks here!
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  #index
  def index
    # if current_user
    #   @artists = current_user.artists.order('name ASC')
    # else
      @artists = Artist.all.order('name ASC')
    # end
  end

  def myartists
    # excellent use of a custom method in the controller.
    @artists = current_user.artists.order('name ASC')
  end


  #new
  def new
    @artist = Artist.new
  end

  #create
  def create
    # @artist = Artist.create!(artist_params)
    @artist = current_user.artists.create!(artist_params)
    redirect_to artist_path(@artist)
  end

  #show
  def show
  end

  #edit
  def edit
  end

  #update
  def update

    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  #destroy
  def destroy

    @artist.destroy # if @artist.user == current_user
    redirect_to artists_path
  end


  private
  def artist_params
    params.require(:artist).permit(:name, :photo_url)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end


end
