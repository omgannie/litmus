class SongsController < ApplicationController
  def index
  end

  def search_song
    genre_id = params[:genre].to_i
    genre = Genre.find_by(id: genre_id)
    redirect_to "/passages"
  end

  private
  def song_params
  end
end
