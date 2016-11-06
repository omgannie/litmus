class Song < ActiveRecord::Base
  validates :artist_name, :song_title, presence: true

  has_one :lyric
  has_many  :categorizations
  has_many  :genres, through: :categorizations

  def get_recommendations
    RSpotify.authenticate(ENV["SPOTIFY_CLIENT_ID"], ENV["SPOTIFY_CLIENT_SECRET"])

    RSpotify.raw_response = true

    recommendations = RSpotify::Recommendations.generate(limit: params[:limit], seed_genres: [params[:seed_genre]], min_valence: params[:min_valence], max_valence: params[:max_valence], target_valence: params[:target_valence])
    

    JSON.parse(recommendations)
  end
end
