class ArtworksController < ApplicationController
  def index
      user = User.find(params[:user_id])

      owned_artworks = user.artworks
      shared_artworks = user.shared_artworks
      render json: owned_artworks + shared_artworks
  end

  def create
      artwork = Artwork.new(user_params)
      if artwork.save
          render json: artwork
      else
          render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
  end

  def show
      artwork = Artwork.find(params[:id])
      render json: artwork
  end

  def update
      artwork = Artwork.find(params[:id])
      if artwork.update(user_params)
          render json: artwork
      else
          render json: artwork.errors.full_messages, status: :unprocessable_entity
      end
  end

  def destroy
      artwork = Artwork.find(params[:id])
      artwork = artwork.destroy
      render json: artwork
  end

  private
  
  def user_params
    params.require(:artwork).permit(:title, :url, :artist_id)
  end
end