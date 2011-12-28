Website::Application.routes.draw do
  
  get "games/index"

  match "/home", :to => "home#index"
  match "/games", :to => "games#index"
  
  root :to => "home#index"
    
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  
  resources :message
  
end
