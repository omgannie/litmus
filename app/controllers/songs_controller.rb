class SongsController < ApplicationController

  def search_song
    genre_id = params[:genre].to_i
    genre = Genre.find_by(id: genre_id)

    analysis = Passage.last.analyze_passage
    tones = Passage.emotion_tone(analysis)
    emotion = Passage.primary_emotion(tones)

    @song = Song.new
    recommendations = @song.get_recommendations({ seed_genres: genre.categories }, emotion)
    parsed = @song.parse_recommendations(recommendations)

    parsed.each do |song|
      Song.create(artist_name: song["artist"], song_title: song["track"], genre_id: genre.id)
    end

    has_lyrics = Genre.where(has_lyrics: true)

    if has_lyrics
      redirect_to lyrics_search_lyrics_path
    else
      redirect_to '/passages'
    end
  end
end
