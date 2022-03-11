class MoviesController < ApplicationController

  def show_all_movies
    movies = Movie.all
    render json: movies
  end

  def show_movie
    movie = Movie.find_by(id: rand(1...13))
    render json: movie
  end

end
