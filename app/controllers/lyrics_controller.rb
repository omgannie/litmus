class LyricsController < ApplicationController

  def search_lyrics
    songs = Song.most_recent_with_lyrics

    track_ids = find_track_ids(songs)
    all_lyrics = get_lyrics(track_ids)
    lyric_objects = create_lyric_objects(songs, all_lyrics)
    attach_lyric_id(lyric_objects)
    create_emotion_objects(lyric_objects)

    redirect_to songs_best_song_match_path
  end

  private
  def find_track_ids(songs)
    lyric = Lyric.new
    all_track_ids = []

    songs.each do |song|
      result = lyric.get_track_id(song.artist_name, song.song_title)
      all_track_ids.push(result[0])
    end
    all_track_ids
  end

  def get_lyrics(track_ids)
    lyric = Lyric.new
    lyrics = []

    track_ids.each do |track_id|
      result = lyric.get_lyrics(track_id)
      lyrics.push(result)
    end

    lyrics.reject! { |lyric| lyric.to_s.empty? }
    lyrics
  end

  def create_lyric_objects(songs, lyrics)
    index = 0
    lyric_objects = []

    while index < lyrics.length
      lyric_objects.push(Lyric.create(song_id: songs[index].id, body: lyrics[index]))
      index += 1
    end
    lyric_objects
  end

  def create_emotion_objects(lyric_objects)
    lyric_objects.each do |lyric_object|
      tone_analysis = lyric_object.analyze_passage
      tone_results = Lyric.emotion_tone(tone_analysis)
      emotion_params = Lyric.format_watson_data(tone_results)
      new_emotion_object = Emotion.new(emotion_params)
      new_emotion_object.emotionable_id = lyric_object.id
      new_emotion_object.emotionable_type = lyric_object.class
      new_emotion_object.save
    end
  end

  def attach_lyric_id(lyric_objects)
    lyric_objects.each do |lyric_object|
      current_song = Song.find_by(id: lyric_object.song_id)
      current_song.lyric_id = lyric_object.id
      current_song.save
    end
  end
end
