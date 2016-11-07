class PassagesController < ApplicationController
  def index
    @genre_options =  Genre.all.map{ |genre| [genre.name, genre.id] }
    @passage = Passage.new
  end

  def create
    @passage = Passage.new(passage_params)

    if @passage.save
      tone_analysis = passage.analyze_passage
      tone_results = Passage.emotion_tone(tone_analysis)
      primary_tone = Passage.primary_emotion(tone_results)
    end
    redirect_to "/passages"
  end

  def show
    passage_object = Passage.find(params[:id])
    watson_object = passage_object.analyze_passage
    tone = Passage.emotion_tone(watson_object)
  end

  private
  def passage_params
    params.require(:passage).permit(:body)
  end
end
