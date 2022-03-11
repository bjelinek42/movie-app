Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actors" => "actors#show_actor"

  get "/movies" => "movies#show_all_movies"

  get "/movie" => "movies#show_movie"

  get "/actor" => "actors#query_actor"

  get "/actor/:first_name" => "actors#segment_actor"

  post "/actor_body" => "actors#body_actor"
end
