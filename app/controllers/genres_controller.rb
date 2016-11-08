class GenresController < ApplicationController
  def show
    @genre_options =  Genre.all.map{ |genre| [genre.name, genre.id] }
  end
end
