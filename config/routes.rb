Rails.application.routes.draw do
  # get("/things", { :controller => "things", :action => "index" })

  get("/data", { :controller => "data", :action => "show" })
end
