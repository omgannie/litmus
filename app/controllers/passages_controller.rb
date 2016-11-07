class PassagesController < ApplicationController
  def index
    @genre_options =  Genre.all.map{ |genre| [genre.name, genre.id] }
  end

  def create
    @passage = Passage.new(passage_params)

    if @passage.save
      # Run through Watson analyzer
    end
    redirect_to "/passages"
  end

  private
  def passage_params
    params.require(:passage).permit(:body)
  end
end
