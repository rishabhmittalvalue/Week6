Rails.application.routes.draw do
  # get("/things", { :controller => "things", :action => "index" })

  get("/data", { :controller => "data", :action => "show" })
  get("/tacos", { :controller => "tacos", :action => "index" })
end
