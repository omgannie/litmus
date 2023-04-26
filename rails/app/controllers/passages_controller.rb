class PassagesController < ApplicationController
  def index
    @passage = Passage.new
  end

  def create
    @passage = Passage.new(passage_params)

    if @passage.save
      tone_analysis = @passage.analyze_passage
      tone_results = Passage.emotion_tone(tone_analysis)
      emotion_params = Passage.format_watson_data(tone_results)
      new_emotion_object = Emotion.new(emotion_params)
      new_emotion_object.emotionable_id = @passage.id
      new_emotion_object.emotionable_type = @passage.class
      new_emotion_object.save
    end

    redirect_to '/genres/show'
  end

  private
  def passage_params
    params.require(:passage).permit(:body)
  end
end
