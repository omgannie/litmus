class Song < ActiveRecord::Base
  scope :recent, -> { order("created_at DESC").limit(5) }
  validates :artist_name, :song_title, presence: true

  has_one   :lyric
  has_one   :genre

  def map_emotions(primary_emotion)
    case primary_emotion
    when "Anger"
      {min_valence: 0.3, max_valence: 0.6, min_energy: 0.7}
    when "Disgust"
      {min_valence: 0.3, max_valence: 0.7, min_energy: 0.6, max_acousticness: 0.2}
    when "Fear"
      {min_valence: 0.3, max_valence: 0.7, min_energy: 0.5, max_acousticness: 0.2}
    when "Joy"
      {min_valence: 0.7}
    when "Sadness"
      {max_valence: 0.3}
    end
  end

  def get_recommendations(genre_hash, primary_emotion)
    authenticate = RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV["SPOTIFY_CLIENT_SECRET"])
    RSpotify.raw_response = true

    options_hash = map_emotions(primary_emotion)
    options_hash[:limit] = 5
    options_hash[:seed_genres] = genre_hash[:seed_genres]
    recommendations = RSpotify::Recommendations.generate(options_hash)

    JSON.parse(recommendations)
  end

  def parse_recommendations(recommendations)
    metadata_list = []
    recommendations["tracks"].each do |track|
      metadata_list << {"artist" => track["artists"][0]["name"], "track" => track["name"]}
    end
    metadata_list
  end

end
