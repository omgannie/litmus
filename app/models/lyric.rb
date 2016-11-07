class Lyric < ActiveRecord::Base
  validates :body, :song_id, presence: true

  belongs_to :song
  has_one :emotion, as: :emotionable
end
