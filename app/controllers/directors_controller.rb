class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb"})
  end

  def eldest

    @oldest =Director.where.not({ :dob => nil}).order({ :dob => :asc}).at(0)
    @oldest_name = @oldest.name
    @bday = @oldest.dob.strftime("%B %e, %Y")

    render({ :template => "director_templates/eldest.html.erb"})
  end

  def youngest

    @youngest =Director.where.not({ :dob => nil}).order({ :dob => :desc}).at(0)
    @youngest_name = @youngest.name
    @bday = @youngest.dob.strftime("%B %e, %Y")

    render({ :template => "director_templates/youngest.html.erb"})
  end

  def details

    @dir = params.fetch("dir_id").to_i
    @dir_data = Director.where({ :id => @dir}).at(0)
    @list_of_movies = Movie.where({ :director_id => @dir_data.id})

    render({ :template => "director_templates/details.html.erb"})
  end

end