class CharactersController < ApplicationController

  def index
    render({ :template => "character_templates/index.html.erb"})
  end

  def details
    @id = params.fetch("id")
    @character = Character.all.where({ :id => @id}).at(0)
    render({ :template => "character_templates/details.html.erb"})
  end 
end
