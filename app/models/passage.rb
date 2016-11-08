class Passage < ActiveRecord::Base
  include EmotionConcern
  validates :body, presence: true
  def self.emotion_tone(watson_object)
    emotions = []
    tones = watson_object["document_tone"]["tone_categories"][0]["tones"]

    tones.each do |tone|
      emotions << {"name" => tone["tone_name"], "score" => tone["score"]}
    end
    emotions
  end

  def self.format_watson_data(watson_emotion_tone)
    watson_database = Hash.new

    watson_emotion_tone.each do |emotion|
      emotion.each do |k, v|
        if v == "Joy"
          watson_database[:joy] = emotion["score"]
        elsif v == "Anger"
          watson_database[:anger] = emotion["score"]
        elsif v == "Disgust"
          watson_database[:disgust] = emotion["score"]
        elsif v == "Sadness"
          watson_database[:sadness] = emotion["score"]
        elsif v == "Fear"
          watson_database[:fear] = emotion["score"]
        end
      end
    end

    watson_database
  end

  def self.primary_emotion(emotion_list)
    emotion_list.max { |emotion_1, emotion_2| emotion_1["score"] <=> emotion_2["score"] }["name"]
  end
end
