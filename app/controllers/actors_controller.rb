class ActorsController < ApplicationController
  def show_actor
    actor = Actor.find_by(id: rand(1...17))
    render json: actor
  end

  def query_actor
    actor = Actor.find_by(id: params["id"]) || Actor.find_by(first_name: params["first_name"]) || Actor.find_by(last_name: params["last_name"])
    render json: actor
  end

  def segment_actor
    actor = Actor.find_by(first_name: params["first_name"])
    render json: actor
  end
end
