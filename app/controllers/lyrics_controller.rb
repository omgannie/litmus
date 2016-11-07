class LyricsController < ApplicationController

  def search_lyrics
    songs = Song.recent
    lyric = Lyric.new

    all_track_ids = []
    lyric_objects = []

    songs.each do |song|
      new_lyric = Lyric.new(song_id: song.id)
      result = lyric.get_track_id(song.artist_name, song.song_title)
      all_track_ids.push(result[0])
      lyric_objects.push(new_lyric)
    end

    lyrics = []
    all_track_ids.each do |track_id|
      result = lyric.get_lyrics(track_id)
      lyrics.push(result)
    end

    lyrics.reject! { |lyric| lyric.to_s.empty? }

    index = 0
    while index < lyrics.length
      lyric_objects.each do |lyric_object|
        lyric_object.body = lyrics[index]
        lyric_object.save
        tone_analysis = lyric_object.analyze_passage
        tone_results = Lyric.emotion_tone(tone_analysis)
        emotion_params = Lyric.format_watson_data(tone_results)
        new_emotion_object = Emotion.new(emotion_params)
        new_emotion_object.emotionable_id = lyric_object.id
        new_emotion_object.emotionable_type = lyric_object.class
        new_emotion_object.save
        p new_emotion_object
      end
      index += 1
    end

    analyzed_passages = []

    redirect_to '/passages'
  end
end
