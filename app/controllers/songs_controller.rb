class SongsController < ApplicationController

  def search_song
    genre_id = params[:genre].to_i
    genre = Genre.find_by(id: genre_id)

    # emotion = # Passage.primary_emotion
    # attribute_map = Song.map_emotions(emotion)

    @song = Song.new
    recommendations = @song.get_recommendations({ seed_genres: genre.categories })

    recommendations.each do |song|
      Song.create(artist_name: song["artist"], song_title: song["track"])
    end
    redirect_to lyrics_search_lyrics_path
  end

  def compare_emotions
    redirect_to '/passages'
  end
end
