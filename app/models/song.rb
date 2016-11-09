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

    song_lyric_matches.each do |lyric_object|
      emotions = Emotion.where(emotionable_id: lyric_object.id)
      emotions.each do |emotion|
        emotion_object_matches.push(emotion)
      end
    end

    emotion_object_matches
  end

  def self.chosen_song
    final_lyric = nil
    final_song = nil

    if Song.most_recent_with_lyrics.length == 0
      final_song = Song.recent.offset(rand(Song.recent.count)).first
    elsif Song.most_recent_with_lyrics.length >= 1
      lyrics = Lyric.recent
      song_lyric_matches = Song.match_lyric_to_song(lyrics)
      emotion_object_matches = Song.strongest_emotion_matches(song_lyric_matches)

      values = Emotion.strongest_matches(emotion_object_matches)
      final_value = Emotion.compare_matches(values)

      strongest_passage_emotion = Passage.last.emotion.strongest_emotion
      strongest_passage_emotion

      emotion_object_matches.each do |emotion_object|
        if emotion_object.read_attribute(strongest_passage_emotion) == final_value
          final_lyric = Lyric.find_by(id: emotion_object.emotionable_id)
          final_song = final_lyric.song
        end
      end
    end
    final_song
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
      metadata_list << {"artist" => track["artists"][0]["name"], "track" => track["name"], "uri" => track["uri"]}
    end
    metadata_list
  end


end
