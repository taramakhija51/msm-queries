class ActorsController < ApplicationController

  def index
    render({ :template => "actor_templates/index.html.erb"})
  end

  def details
    @id = params.fetch("id")
    @actor = Actor.all.where({ :id => @id}).at(0)
    render({ :template => "actor_templates/details.html.erb"})
  end 

end
