class ArtworksController < ApplicationController
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

  def sum
    @sum = 1 + 1
  end
end
