class DirectorsController < ApplicationController

  def index
    render({ :template => "director_templates/index.html.erb"})
  end

  def wisest
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def childest
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def details
    @id = params.fetch("id")
    @director = Director.all.where({ :id => @id}).at(0)
    render({ :template => "director_templates/details.html.erb"})
  end 
end
