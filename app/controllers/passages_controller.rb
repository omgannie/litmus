class PassagesController < ApplicationController
  def index
    @genre_options =  Genre.all.map{ |genre| [genre.name, genre.id] }
  end

  def new
    @passage = Passage.new
  end

  def create
    @passage = Passage.new(passage_params)
    p @passage

    @passage.save
      redirect_to @passage
  end

  def show
    passage_object = Passage.find(params[:id])
    watson_object = passage_object.analyze_passage
    @wat_return = Passage.pretty_watson(watson_object)
  end

  private
  def passage_params
    params.require(:passage).permit(:body)
  end
end
