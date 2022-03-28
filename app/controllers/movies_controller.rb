class MoviesController < ApplicationController
  def show
    @movie = Movie.find_by(id: params[:id])
    render template: "movies/show"
  end

  def index
    movie = Movie.all
    render json: movie
  end

  def create
    movie = Movie.new({
      title: params[:title], 
      year: params[:year],
      plot: params[:plot],
      english: params[:english],
      director: params[:director]
      })
    if movie.save
      render json: movie
    else
      render json: movie.errors.full_messages
    end
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.english = params[:english] || movie.english
    movie.director = params[:director] || movie.director
    if movie.save
      render json: movie
    else
      render json: movie.errors.full_messages
    end
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    movie.delete
  end
end
