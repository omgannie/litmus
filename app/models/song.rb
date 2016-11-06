require 'rspotify'

class Song < ActiveRecord::Base
  validates :artist_name, :song_title, presence: true

  has_one :lyric
  has_many  :categorizations
  has_many  :genres, through: :categorizations

  def get_recommendations(hash)
    authenticate = RSpotify.authenticate("99b5c24585474650951d10111007defd", "1b657d2f4f8c4c6aa6590b55d1c1e798")

    RSpotify.raw_response = true

    recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: hash[:seed_genres])


    JSON.parse(recommendations)
  end
end
