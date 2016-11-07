class Lyric < ActiveRecord::Base
  validates :body, :song_id, presence: true

  belongs_to :song
  has_one :emotion, as: :emotionable

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
end
