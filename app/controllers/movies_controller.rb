class MoviesController < ApplicationController

  def index
    render({ :template => "movie_templates/index.html.erb"})
  end

  def details
    @id = params.fetch("id")
    @movie = Movie.all.where({ :id => @id}).at(0)
    render({ :template => "movie_templates/details.html.erb"})
  end 
end
