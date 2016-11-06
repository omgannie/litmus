class SongsController < ApplicationController
  def search_song
    genre_id = params[:genre].to_i
    genre = Genre.find_by(id: genre_id)
    redirect_to "/passages"
  end
end
