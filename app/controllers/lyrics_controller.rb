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
    redirect_to '/passages'
  end
end
