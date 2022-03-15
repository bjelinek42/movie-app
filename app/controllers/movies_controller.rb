class MoviesController < ApplicationController
  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie
  end

  def index
    movie = Movie.all
    render json: movie
  end

  def create
    movie = Movie.new({
      title: params[:title], 
      year: params[:year],
      plot: params[:plot]
      })
      movie.save
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title]
    movie.year = params[:title]
    movie.plot = params[:title]
    movie.save
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.delete
  end
end
