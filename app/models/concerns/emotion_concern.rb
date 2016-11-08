module EmotionConcern
  extend ActiveSupport::Concern

  included do
    has_one :emotion, as: :emotionable
  end

  def analyze_passage
    init = ToneAnalyzer.new(ENV["WATSON_USERNAME"], ENV["WATSON_PASSWORD"])
    response = init.analyze(self.body)
  end
end
