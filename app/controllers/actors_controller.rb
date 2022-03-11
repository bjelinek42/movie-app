class ActorsController < ApplicationController
  def show_actor
    actor = Actor.find_by(id: rand(1...17))
    render json: actor
  end
end
