Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources "place"
  resources "entry"
  resources "application_record"
  resources "posts"
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
end
