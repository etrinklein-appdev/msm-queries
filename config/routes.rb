Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/directors/eldest", { :controller => "directors", :action => "eldest"})

  get("/directors/youngest", { :controller => "directors", :action => "youngest"})

  get("/directors/:dir_id", { :controller => "directors", :action => "details"})

  get("/movies", { :controller => "movies", :action => "index"})

  get("/movies/:mov_id", { :controller => "movies", :action => "movie_details"})

  get("/actors", { :controller => "actors", :action => "index"})

  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details"})
  
end
