class Song < ActiveRecord::Base
  validates :artist_name, :song_title, presence: true

  has_one :lyric
  has_many  :categorizations
  has_many  :genres, through: :categorizations
  
  def map_emotions(primary_emotion)
    case primary_emotion
    when "Anger"
      [{min_valence: 0.3}, {max_valence: 0.6}, {min_energy: 0.7}]
    when "Disgust"
      { options: "min_valence: 0.3, max_valence: 0.7, min_energy: 0.6, max_acousticness: 0.2"}
    when "Fear"
      { options: "min_valence: 0.3, max_valence: 0.7, min_energy: 0.5, max_acousticness: 0.2"}
    when "Joy"
      { options: "min_valence: 0.7"}
    when "Sadness"
      { options: "max_valence: 0.3"}
    else
      { options: "Not valid options" }
    end
  end

  def get_recommendations(hash)
    authenticate = RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV["SPOTIFY_CLIENT_SECRET"])

    RSpotify.raw_response = true
    recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: genre_hash[:seed_genres], tone_hash[:options])
    response = JSON.parse(recommendations)

    # return relevant data as
    metadata_list = []
    response["tracks"].each do |track|
      metadata_list << {"artist" => track["artists"][0]["name"], "track" => track["name"]}
    end
    metadata_list
  end

end
