class Movie < ApplicationRecord
  validation :title, length: { minimum: 2}
  validation :director, length: { minimum: 2}
  validation :year, length: { minimum: 4}
  validation :plot, length: { minimum: 10}
  validation :plot, length: { maximum: 100}
end
