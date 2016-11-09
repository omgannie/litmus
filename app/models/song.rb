class Song < ActiveRecord::Base
  scope :recent, -> { order("created_at DESC").limit(5) }
  validates :artist_name, :song_title, presence: true

  has_one   :lyric
  belongs_to   :genre

  def self.most_recent_with_lyrics
    Song.recent.select do |song|
      song.genre.has_lyrics
    end
  end

  def self.song_ids
    song_ids = []
    Song.recent.each do |song|
      song_ids.push(song.id)
    end
    song_ids
  end

  def self.match_lyric_to_song(recent_lyrics)
    song_lyric_matches = []
    recent_lyrics.each do |lyric_object|
      if Song.song_ids.include?(lyric_object.song_id)
        song_lyric_matches.push(lyric_object)
      end
    end
    song_lyric_matches
  end

  def self.strongest_emotion_matches(song_lyric_matches)
    emotion_object_matches = []
    passage_strongest_emotion = Passage.last.emotion.strongest_emotion

    song_lyric_matches.each do |lyric_object|
      lyric_strongest_emotion = lyric_object.strongest_emotion

      if lyric_strongest_emotion == passage_strongest_emotion
        emotions = Emotion.where(emotionable_id: lyric_object.id)
        emotions.each do |emotion|
          emotion_object_matches.push(emotion)
        end
      end
    end

    emotion_object_matches
  end

  def self.chosen_song(emotion_object_matches)
    emotion_object_matches[0].strongest_emotion
    if Song.most_recent_with_lyrics.length > 1
      values = Emotion.strongest_matches(emotion_object_matches)
      winning_value = Emotion.compare_matches(values)
      winning_emotion_object = nil

      # winning_lyric_object = winning_emotion_object.lyric
    else
      # search songs without lyrics (song genres don't have lyrics)
    end
  end

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
