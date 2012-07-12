Statusboard::Application.routes.draw do
  
  get "dashboard/index"
  resources :servers

  # Checkers
  resources :checkers
  
  root :to => 'dashboard#index'
  # match ':controller(/:action(/:id))(.:format)'
end
