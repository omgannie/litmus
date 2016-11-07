require 'rspotify'

class Song < ActiveRecord::Base
  validates :artist_name, :song_title, presence: true

  has_one :lyric
  has_many  :categorizations
  has_many  :genres, through: :categorizations

  def get_recommendations(hash)
    authenticate = RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV["SPOTIFY_CLIENT_SECRET"])

    RSpotify.raw_response = true
    recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: hash[:seed_genres])
    response = JSON.parse(recommendations)
    
    # return relevant data as 
    metadata_list = []
		response["tracks"].each do |track|
			metadata_list << {"artist" => track["artists"][0]["name"], "track" => track["name"]}
		end
		metadata_list
  end
end
