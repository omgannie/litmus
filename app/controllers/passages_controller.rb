class PassagesController < ApplicationController
  def index
    @genre_options =  Genre.all.map{ |genre| [genre.name, genre.id] }
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
    redirect_to @passage
  end

  def show
    passage_object = Passage.find(params[:id])
    watson_object = passage_object.analyze_passage
    @tone = Passage.emotion_tone(watson_object)
    @strongest_emotion = Passage.primary_emotion(@tone)
  end

  private
  def passage_params
    params.require(:passage).permit(:body)
  end
end
