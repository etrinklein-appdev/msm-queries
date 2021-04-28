class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    @list_of_dirs = Director.all

    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details

    @id = params.fetch("mov_id").to_i
    @movie = Movie.where({ :id => @id}).at(0)
    @director = Director.where({ :id => @movie.director_id}).at(0)

    render({ :template => "movie_templates/details.html.erb"})
  end

end