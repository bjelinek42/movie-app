require "http"

response = HTTP.get("http://localhost:3000/movies")
p response.parse
movies = response.parse

movies.each do |movie|
  p movie["title"]
  p movie["year"]
  p movie["plot"]
end