Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", { :controller => "items", :action => "backdoor"})
  post("/insert_item", {:controller => "items", :action => "insert_item"})
  delete("/delete_item/:id", {:controller => "items", :action => "delete_item"})
end
