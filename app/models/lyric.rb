class Lyric < ActiveRecord::Base
  validates :body, :song_id, presence: true

  belongs_to :song
  has_one :emotion, as: :emotionable

  def get_lyrics
  	MusixMatch::API::Base.api_key = ENV['MUSIX_MATCH']
  	
  end
end
