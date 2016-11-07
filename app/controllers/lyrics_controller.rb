class LyricsController < ApplicationController

  def search_lyrics
    songs = Song.recent
    lyric = Lyric.new
    all_track_ids = []
    songs.each do |song|
      result = lyric.get_track_id(song.artist_name, song.song_title)
      all_track_ids.push(result[0])
    end

    lyrics = []
    all_track_ids.each do |track_id|
      result = lyric.get_lyrics(track_id)
      lyrics.push(result)
    end

    lyrics.reject! { |lyric| lyric.to_s.empty? }

    redirect_to '/passages'
  end
end
