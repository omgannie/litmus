class LyricsController < ApplicationController

  def search_lyrics
    songs = Song.recent
    lyric = Lyric.new
    lyrics = []
    all_track_ids = []
    songs.each do |song|
      result = lyric.get_track_id(song.artist_name, song.song_title)
      all_track_ids.push(result[0])
    end
  all_track_ids
  [99109152, 13912023, 56340444, 44273080, 100529425]
    redirect_to '/passages'
  end
end
