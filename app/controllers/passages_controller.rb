class PassagesController < ApplicationController
  def index
  end

  def new
    @passage = Passage.new
  end

  def create
    @passage = Passage.new(passage_params)

    if @passage.save
      # Run through Watson analyzer
      redirect_to "/passages"
    end
  end

  private
  def passage_params
    params.require(:passage).permit(:body)
  end
end
