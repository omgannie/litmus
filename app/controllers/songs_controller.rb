class SongsController < ApplicationController

  def search_song
    genre_id = params[:genre].to_i
    genre = Genre.find_by(id: genre_id)

    formatted_emotions = Emotion.format_emotions(Passage.last.emotion)
    emotion =  Emotion.strongest_emotion(formatted_emotions).capitalize!

    @song = Song.new
    recommendations = @song.get_recommendations({ seed_genres: genre.categories }, emotion)
    parsed = @song.parse_recommendations(recommendations)

    parsed.each do |song|
      Song.create(artist_name: song["artist"], song_title: song["track"], genre_id: genre.id)
    end

    has_lyrics = Song.most_recent_with_lyrics

    if has_lyrics.length > 1
      redirect_to lyrics_search_lyrics_path
    else
      redirect_to songs_best_song_match_path
    end
  end

  def best_song_match
    # Song.chosen_song
    redirect_to "/songs/show"
  end

  def show
    @passage = Passage.last
    @emotion_data = Emotion.find_by(emotionable_id: @passage.id)
    @strongest_emotion_from_passage = @passage.emotion
  end
end
