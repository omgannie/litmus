class SongsController < ApplicationController

# TODO: Add logic for strongest emotion. If the strongest emotion is joy, add valence for joy

  def search_song
    genre_id = params[:genre].to_i
    genre = Genre.find_by(id: genre_id)

    emotion = # Passage.primary_emotion
    attribute_map = Song.map_emotions(emotion)

    @song = Song.new
    recommendations = @song.get_recommendations({ seed_genres: genre.categories }, attribute_map)

    redirect_to "/passages"
  end
end
