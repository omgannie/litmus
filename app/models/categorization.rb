class Categorization < ActiveRecord::Base
  validates :song_id, :genre_id,  presence: true

  belongs_to  :genre
  belongs_to  :song
end
