class ActorsController < ApplicationController
  def show_actor
    p Actor.first #not sure what is meant by "show single actor based on id", this will show the actor with id: 1
  end
end
