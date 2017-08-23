class ArtworksController < ApplicationController
  before_action :authorize, only: [:new, :edit, :update, :destroy]

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.save
  end

  def edit
    @artwork = Artwork.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def artwork_params
    params.require(:artwork).permit(:title, :media_type, :created, :description, :image)
  end

end
