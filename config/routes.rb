Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "childest" })
  get("/characters", { :controller => "characters", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "details" })
  get("/actors/:id", { :controller => "actors", :action => "details" })
  get("/movies/:id", { :controller => "movies", :action => "details" })
end
