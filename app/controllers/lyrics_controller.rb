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
      end
      index += 1
    end

    redirect_to '/passages'
  end
end
