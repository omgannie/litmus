class LyricsController < ApplicationController
  def search_lyrics
    @songs = Song.recent
    @lyrics = Lyric.new
    @songs.each do |song|
      p song
    end

    redirect_to '/passages'
  end
end
