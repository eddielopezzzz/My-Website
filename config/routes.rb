Website::Application.routes.draw do
  
  get "games/index"

  get "contact_form/new"

  get "contact_form/create"

  match "/home", :to => "home#index"
  match "/games", :to => "games#index"
  
  root :to => "home#index"
  
end
