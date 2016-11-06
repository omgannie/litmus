class Song < ActiveRecord::Base
  validates :artist_name, :song_title, presence: true

  has_one :lyric
  has_many  :categorizations
  has_many  :genres, through: :categorizations
end
