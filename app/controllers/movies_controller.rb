class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    @list_of_dirs = Director.all

    render({ :template => "movie_templates/index.html.erb"})
  end

end