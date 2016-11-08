class Lyric < ActiveRecord::Base
  include EmotionConcern
  validates :body, :song_id, presence: true

  belongs_to :song

  def get_track_id(artist_name, song_title)
  	MusixMatch::API::Base.api_key = ENV['MUSIX_MATCH']
    response = MusixMatch.search_track(q_track: song_title, q_artist: artist_name)
    if response.status_code == 200
      track_ids = []
      response.each do |track|
        track_ids.push(track.track_id)
      end
    end
    track_ids
  end

  def get_lyrics(track_id)
    response = MusixMatch.get_lyrics(track_id)
    if response.status_code == 200
      all_lyrics = []
      lyrics = response.lyrics
      all_lyrics.push(lyrics.lyrics_body)
    end
    all_lyrics
  end
end
