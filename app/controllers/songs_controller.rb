class SongsController < ApplicationController

  def search_song
    genre_id = params[:genre_id].to_i
    genre = Genre.find_by(id: genre_id)

    emotion = Passage.last.emotion.strongest_emotion.capitalize!

    @song = Song.new
    recommendations = @song.get_recommendations({ seed_genres: genre.categories }, emotion)
    parsed = @song.parse_recommendations(recommendations)

    parsed.each do |song|
      Song.create(artist_name: song["artist"], song_title: song["track"], uri: song["uri"], genre_id: genre.id)
    end

    has_lyrics = Song.most_recent_with_lyrics

    if has_lyrics.length > 1
      redirect_to lyrics_search_lyrics_path
    else
      redirect_to songs_best_song_match_path
    end
  end

  def best_song_match
    best_song_match = Song.chosen_song
    best_song_match.update_attributes(chosen_song: true)
    redirect_to "/songs/show"
  end

  def show
    @passage = Passage.last
    @passage_emotion = Emotion.find_by(emotionable_id: @passage.id, emotionable_type: "Passage")
    @strongest_emotion_from_passage = @passage.emotion.strongest_emotion
    @strongest_emotion_passage_score = (@passage.emotion.read_attribute(@strongest_emotion_from_passage).to_f * 100).to_i
    @the_one_uri = Song.chosen_song.uri

    if Song.chosen_song.genre.has_lyrics
      lyric = Song.chosen_song.lyric
      @lyrics_emotion = Emotion.find_by(emotionable_id: lyric.id)
      @strongest_emotion_from_lyrics = lyric.emotion.strongest_emotion
      @strongest_emotion_lyrics_score = (lyric.emotion.read_attribute(@strongest_emotion_from_lyrics).to_f * 100).to_i
    end
  end
end
