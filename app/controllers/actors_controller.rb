class ActorsController < ApplicationController
  def show_actor
    actor = Actor.find_by(id: rand(1...17))
    render json: actor
  end

  def query_actor
    actor = Actor.find_by(id: params["id"]) || Actor.find_by(first_name: params["name"])
    render json: actor
  end
end
