class Passage < ActiveRecord::Base
  validates :body, presence: true

  has_one :emotion, as: :emotionable

  def analyze_passage
    if !params[:passage].empty?
      init = ToneAnalyzer.new(ENV["WATSON_USERNAME"], ENV["WATSON_PASSWORD"])
      @response = init.analyze(params[:passage])
    else
      redirect_to root_path
    end
  end

  # TODO: Add highest_emotion method
end
