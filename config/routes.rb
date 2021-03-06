Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

get "/actors" => "actors#index"
post "/actors" => "actors#create"
get "/actors/:id" => "actors#show"
patch "/actors/:id" => "actors#update"
delete "/actors/:id" => "actors#destroy"

get "/movies" => "movies#index"
post "/movies" => "movies#create"
get "/movies/:id" => "movies#show"
patch "/movies/:id" => "movies#update"
delete "/movies/:id" => "movies#destroy"

post "/users" => "users#create"

post "/sessions" => "sessions#create"

post "/movie_genres" => "movie_genres#create"
end
