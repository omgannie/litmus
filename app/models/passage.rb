class Passage < ActiveRecord::Base
  validates :body, presence: true

  has_one :emotion, as: :emotionable

  def analyze_passage
    init = ToneAnalyzer.new(ENV["WATSON_USERNAME"], ENV["WATSON_PASSWORD"])
    response = init.analyze(self.body)
  end

  def self.pretty_watson(wat_obj)
    emotions = []
    tones = wat_obj["document_tone"]["tone_categories"][0]["tones"]
    tones.each do |tone|
      emotions << {"name" => tone["tone_name"], "score" => tone["score"]}
    end
    emotions
  end

end
