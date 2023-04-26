class GenresController < ApplicationController
  def show
    @genre_options =  Genre.all.map{ |genre| [genre.name, genre.id] }
    organize_genres
  end


  private
  def gather_genres
    genres = Genre.all.to_a
  end

  def organize_genres
    gather_genres
    index = 0
    @first = []
    @second = []
    @third = []

    until index == gather_genres.length
      if index < 9
        @first << gather_genres[index]
      elsif index < 18
        @second << gather_genres[index]
      else
        @third << gather_genres[index]
      end

    index += 1
    end
  end
end
