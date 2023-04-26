module EmotionConcern
  extend ActiveSupport::Concern

  included do
    has_one :emotion, as: :emotionable
  end

  def analyze_passage
    init = ToneAnalyzer.new(ENV["WATSON_USERNAME"], ENV["WATSON_PASSWORD"])
    response = init.analyze(self.body)
  end

  module ClassMethods
    def emotion_tone(watson_object)
      emotions = []
      tones = watson_object["document_tone"]["tone_categories"][0]["tones"]

      tones.each do |tone|
        emotions << {"name" => tone["tone_name"], "score" => tone["score"]}
      end
    end

    def format_watson_data(watson_emotion_tone)
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
  end
end
