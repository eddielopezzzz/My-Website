Website::Application.routes.draw do
  
  get "contact_form/new"

  get "contact_form/create"

  get "home/index"

  root :to => "home#index"
  
end
