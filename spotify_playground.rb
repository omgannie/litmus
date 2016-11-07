def map_emotions(primary_emotion)
  case primary_emotion
  when "Anger"
    [{min_valence: 0.3}, {max_valence: 0.6}, {min_energy: 0.7}]
  when "Disgust"
    [{min_valence: 0.3}, {max_valence: 0.7}, {min_energy: 0.6}, {max_acousticness: 0.2}]
  when "Fear"
    [{min_valence: 0.3}, {max_valence: 0.7}, {min_energy: 0.5}, {max_acousticness: 0.2}]
  when "Joy"
    [{min_valence: 0.7}]
  when "Sadness"
    [{max_valence: 0.3}]
  else
    ["Invalid input"]
  end
end



# def get_recommendations(options_hash)
#   authenticate = RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV["SPOTIFY_CLIENT_SECRET"])

#   RSpotify.raw_response = true
#   recommendations = RSpotify::Recommendations.generate(limit: 5, seed_genres: genre_hash[:seed_genres], tone_hash[:options])
#   response = JSON.parse(recommendations)
  
#   # return relevant data as 
#   metadata_list = []
#   response["tracks"].each do |track|
#     metadata_list << {"artist" => track["artists"][0]["name"], "track" => track["name"]}
#   end
#   metadata_list
# end

attributes = map_emotions("Anger")



