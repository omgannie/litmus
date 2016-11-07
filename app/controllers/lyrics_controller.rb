class LyricsController < ApplicationController
  def search_lyrics
    @songs = Song.recent
  end
end
