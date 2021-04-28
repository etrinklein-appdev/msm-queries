class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details

    @id = params.fetch("actor_id").to_i
    @actor = Actor.where({ :id => @id}).at(0)
 
    render({ :template => "actor_templates/details.html.erb"})
  end

end