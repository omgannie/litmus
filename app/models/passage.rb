class Passage < ActiveRecord::Base
  validates :body, presence: true

  has_one :emotion, as: :emotionable

  def analyze_passage
    init = ToneAnalyzer.new(ENV["WATSON_USERNAME"], ENV["WATSON_PASSWORD"])
    response = init.analyze(self.body)
  end

  def self.emotion_tone(analysis)
    emotions = []
    tones = analysis["document_tone"]["tone_categories"][0]["tones"]

    tones.each do |tone|
      emotions << {"name" => tone["tone_name"], "score" => tone["score"]}
    end
    emotions
  end

  def self.primary_emotion(emotion_list)
    emotion_list.max { |emotion_1, emotion_2| emotion_1["score"] <=> emotion_2["score"] }["name"]
  end

end
