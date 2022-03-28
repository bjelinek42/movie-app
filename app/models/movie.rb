class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genre
  has_many :genre, through: :movie_genre
  # validates :title, length: { minimum: 2}
  # validates :director, length: { minimum: 2}
  # validates :year, length: { minimum: 4}
  # validates :plot, length: { minimum: 10}
  # validates :plot, length: { maximum: 100}

  def genre_names
    return genre.name
  end
end
